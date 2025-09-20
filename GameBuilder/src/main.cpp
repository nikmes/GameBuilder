#include "../../raylib/src/raylib.h"
#include "../../rlImGui/imgui-master/imgui.h"
#include "../../rlImGui/rlImGui.h"

int main()
{
    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "GameBuilder - raylib window");
    
    ImGui::GetIO().ConfigFlags |= ImGuiConfigFlags_DockingEnable;

    SetTargetFPS(60);
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
