//
//  Model.swift
//  PcBuilder
//
//  Created by Federica Mosca on 24/02/24.
//

import Foundation
let computerCase: [Int: String] = [
    1: "stage0",
    2:"stage1",
    3:"stage2",
    4:"stage3",
    5:"stage4",
    6:"stage5",
    7:"stage6"
]

struct PCComponent: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
}

extension PCComponent {
    static let all = [
        PCComponent(id: 1, name: "Mother Board", description: "The motherboard acts as the central nervous system of your computer. It's the main circuit board that connects all the other components, allowing them to communicate and work together seamlessly. Think of it as the backbone that supports and links everything in your machine.", image: "mb"),
        PCComponent(id: 2, name: "Power Supply", description: "Just like a heart pumps blood to keep the body alive, the power supply unit (PSU) is the beating heart of your computer. It provides the necessary electrical power to all components, ensuring they can function and operate smoothly.", image: "psu"),
        PCComponent(id: 3, name: "Central Processing Unit", description: "The processor, often referred to as the CPU (Central Processing Unit), is like the brain of your computer. It handles all the calculations and tasks, making decisions and ensuring that your computer can run programs and applications efficiently.", image: "cpu"),
        PCComponent(id: 4, name: "Cooler", description: "Similar to how we need to stay cool to function properly, computers also require effective cooling. The cooling system, including fans and heatsinks, regulates the temperature of the components, preventing overheating and maintaining optimal performance.", image: "cooler"),
        PCComponent(id: 5, name: "Graphic Processing Unit", description: "For a visually stunning experience, the graphics card, or GPU (Graphics Processing Unit), is crucial. It's responsible for rendering images and videos, making it a key component for gaming, video editing, and any visually demanding tasks.", image: "gpu"),
        PCComponent(id: 6, name: "Random Access Memory", description: "Your computer's short-term memory, often referred to as the Rapid Access Memory (RAM), acts as a swift data courier. It stores temporarily used information, ensuring quick access for the processor. It's like a high-speed workspace that allows your computer to handle multiple tasks efficiently.", image: "ram")
    ]
}
