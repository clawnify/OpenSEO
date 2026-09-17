import { useEffect } from "preact/hooks";
import { AppNav, embedded, reportLocation } from "@clawnify/app/client";
import { AppContext } from "./context";
import { useAppState } from "./hooks/use-app";
import { useRouter } from "./hooks/use-router";
import { Sidebar, ConnectionStatus } from "./components/sidebar";
import { ErrorBanner } from "./components/error-banner";
import { Research } from "./components/research";
import { Produce } from "./components/produce";
import { Publish } from "./components/publish";
import { Measure } from "./components/measure";
import { Optimize } from "./components/optimize";
import { Composer } from "./components/composer";

export function App() {
  const appState = useAppState();
  const { view, editId, navigate } = useRouter();

  const renderStage = () => {
    switch (view) {
      case "research": return <Research navigate={navigate} />;
      case "publish": return <Publish navigate={navigate} />;
      case "measure": return <Measure navigate={navigate} />;
      case "optimize": return <Optimize navigate={navigate} />;
      case "compose": return <Composer editId={editId} navigate={navigate} />;
      default: return <Produce navigate={navigate} />;
    }
  };

  const activeStage = view === "compose" ? "produce" : view;

  // Report every route (including /compose/:id) so a dashboard reload reopens it.
  useEffect(() => {
    reportLocation(window.location.pathname + window.location.search);
  }, [view, editId]);

  return (
    <AppContext.Provider value={appState}>
      <div class="flex min-h-screen">
        {embedded ? (
          <AppNav title="SEO" icon="search" active={activeStage} groups={HOST_NAV}
            onNavigate={(item) => navigate(item.href!)} />
        ) : (
          <Sidebar current={activeStage} navigate={navigate} />
        )}
        <main class="min-w-0 flex-1 overflow-auto">
          {embedded && <ConnectionStatus inline />}
          {appState.loading ? (
            <div class="flex h-64 items-center justify-center"><p class="text-muted">Loading…</p></div>
          ) : (
            renderStage()
          )}
        </main>
      </div>
      <ErrorBanner />
    </AppContext.Provider>
  );
}

// Pipeline order; Produce is the app's home ("/"), opened from the app name.
const HOST_NAV = [{ items: [
  { id: "research", label: "Research", icon: "search", href: "/research" },
  { id: "produce", label: "Produce", icon: "sparkles", href: "/produce", home: true },
  { id: "publish", label: "Publish", icon: "send", href: "/publish" },
  { id: "measure", label: "Measure", icon: "bar-chart-3", href: "/measure" },
  { id: "optimize", label: "Optimize", icon: "zap", href: "/optimize" },
] }];
