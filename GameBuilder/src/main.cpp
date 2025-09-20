#include<raylib.h>
#include<lwlog.h>   
#include<nlohmann/json.hpp>
#include<rlImGui.h>
#include<imgui.h>


int main()
{
	// Set up logging
    auto logger = std::make_shared<lwlog::console_logger>("GB2D");
    logger->set_pattern("[%T] [%n] [%l]: %v");
    logger->info("GameBuilder2d starting up");


    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "GameBuilder - raylib window");
   
    SetTargetFPS(60);

    rlImGuiSetup(true);

    // Enable docking in ImGui (after context is created)
    ImGui::GetIO().ConfigFlags |= ImGuiConfigFlags_DockingEnable;

    while (!WindowShouldClose())
    {
        BeginDrawing();

        ClearBackground(RAYWHITE);
              
        rlImGuiBegin();

		ImGui::ShowDemoWindow();

        rlImGuiEnd();

        const char* msg = "Hello, raylib!";

        int fontSize = 20;

        int textWidth = MeasureText(msg, fontSize);

        DrawText(msg, (screenWidth - textWidth)/2, (screenHeight - fontSize)/2, fontSize, DARKGRAY);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}
