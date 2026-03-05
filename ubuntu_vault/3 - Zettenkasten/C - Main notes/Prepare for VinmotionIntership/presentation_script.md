# 📝 Kịch Bản Presentation VinMotion — v2 (Đã chỉnh theo feedback)

> **Tổng thời lượng:** 3 phút (180s)
> **Ngôn ngữ thuyết trình:** Tiếng Việt
> **Ngôn ngữ slide:** Tiếng Anh
> **Phụ đề video:** Tiếng Anh
> **Format:** 7 slides tối giản — visual + keyword + 2-3 dòng hỗ trợ

---

## 🎯 Tổng Quan Cấu Trúc v2

> **Thay đổi chính so với v1:**
> - DENSO lên trước AGV → tạo arc "động lực → hành động"
> - Tone khiêm tốn, tự tin, không lố
> - Nêu rõ vị trí apply + giá trị mang lại ngay từ đầu
> - Nội dung chính xác theo CV, project thực tế, KI

|  Slide   | Nội dung                                            | Thời lượng |
| :------: | --------------------------------------------------- | :--------: |
|    1     | Cover — Giới thiệu + Vị trí apply + Giá trị cốt lõi |    25s     |
|    2     | Nền tảng — Cơ điện tử + Hành trình                  |    20s     |
|    3     | DENSO Factory Hacks — Bước ngoặt + Động lực         |    25s     |
|    4     | Đồ án AGV — Bài toán + Giải pháp                    |    35s     |
|    5     | AGV — Kiến trúc kỹ thuật                            |    30s     |
|    6     | Kết quả + Các dự án khác                            |    25s     |
|    7     | Tại sao VinMotion + Cảm ơn                          |    20s     |
| **Tổng** |                                                     |  **180s**  |

---

## Slide 1: Cover (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
LE DUC NGUYEN
B.S. Mechatronics Engineering — HUST (Final Year)

Applying for: Engineering Internship
Focus: Reinforcement Learning × Robotics × Industrial AI

📍 Hanoi, Vietnam
✉️ nguyen.ld2310@gmail.com
💻 github.com/AndrewHaward2310
```

### 🎤 Lời nói (Tiếng Việt):
> Xin chào anh/chị. Em là **Lê Đức Nguyên**, sinh viên năm cuối ngành **Cơ điện tử** tại Đại học Bách khoa Hà Nội. Em ứng tuyển vị trí **Engineering Internship** tại VinMotion, với định hướng **Reinforcement Learning** và **hệ thống robot tự hành**.
>

> [!FIX] 
> Check lại trong JD xem có định hướng như bạn nói không? theo tôi nhớ làm gì có hệ thống robot tự hành

> Trong bài trình bày hôm nay, em muốn chia sẻ những gì em đã học và xây dựng — và cách những kinh nghiệm đó có thể **đóng góp vào nghiên cứu humanoid robotics** tại VinMotion.

> [!FIX]
> Cần viết hay hơn

### 🇬🇧 English subtitle:
> Hello everyone. I'm **Le Duc Nguyen**, a final-year **Mechatronics Engineering** student at Hanoi University of Science and Technology. I'm applying for the **Engineering Internship** at VinMotion, with a focus on **Reinforcement Learning** and **autonomous robot systems**.
>
> In today's presentation, I'd like to share what I've learned and built — and how these experiences can **contribute to humanoid robotics research** at VinMotion.

---

## Slide 2: Background — Nền tảng Cơ điện tử (20s)

### 🖥️ Trên slide (Tiếng Anh):
```
WHY MECHATRONICS?

Where mechanics, electronics, control & AI converge
— the foundation for building robots.

Core Coursework:
  Automatic Control | Robotics & Kinematics
  Embedded Systems  | Signal Processing
  Digital Systems   | AI & Machine Learning

Achievements:
  🏅 Dean's List & Academic Scholarship (2021-2022)
  🏅 Innovation & Scientific Research Award (2022)
  🏆 3rd Prize — DENSO Factory Hacks (2024)
```

### 🎤 Lời nói (Tiếng Việt):
> Em theo học ngành Cơ điện tử vì đây là ngành kết hợp cơ khí, điện tử, điều khiển và AI — những thành phần cốt lõi để xây dựng robot. Trong quá trình học tập, em đã làm nhiều dự án thực tế — từ hệ thống **định vị UWB trong kho hàng**, **IoT Smart Garden** với kiến trúc microservice, đến cuộc thi AI công nghiệp cùng DENSO.
> 
> Chính những trải nghiệm này đã dẫn em đến đề tài đồ án tốt nghiệp về **Reinforcement Learning cho robot tự hành** — mà em sẽ trình bày ngay sau đây.

### 🇬🇧 English subtitle:
> I study Mechatronics because it combines mechanics, electronics, control, and AI — the core building blocks of robotics. Throughout my studies, I've worked on several hands-on projects — from **UWB indoor positioning for warehouses**, an **IoT Smart Garden** with microservice architecture, to an industrial AI competition with DENSO.
>
> These experiences led me to my capstone project on **Reinforcement Learning for autonomous robots** — which I'll present next.

---

## Slide 3: DENSO Factory Hacks — Bước ngoặt (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
THE TURNING POINT

🏆 DENSO Factory Hacks 2023 — 3rd Prize (National)
   Organized by DENSO × FPT | Team Lead, 4 members

PROBLEM:
  Factory maintenance engineers spend hours
  searching through massive error databases

OUR SOLUTION:
  LLM-powered Q&A system
  → Natural language queries on error history
  → Hours of searching → seconds

Tech: LLM + Elasticsearch + Weaviate (Vector DB)
      + Streamlit Dashboard + Docker

→ This experience sparked my capstone direction
```

### 🎤 Lời nói (Tiếng Việt):
> Cuối năm 2023, em tham gia cuộc thi **DENSO Factory Hacks** — chương trình hợp tác giữa DENSO và FPT. Em dẫn nhóm 4 người xây dựng hệ thống **hỏi đáp thông minh cho kỹ sư bảo trì nhà máy**: thay vì phải tra cứu thủ công trong kho dữ liệu lỗi khổng lồ, kỹ sư có thể **đặt câu hỏi bằng ngôn ngữ tự nhiên** và nhận câu trả lời chính xác trong vài giây. Đội em **đạt giải 3 toàn quốc**.
>
> Nhưng quan trọng hơn giải thưởng, trải nghiệm thực tế trong nhà máy DENSO đã cho em thấy tiềm năng to lớn của AI trong sản xuất — và đó chính là **động lực** thúc đẩy em chọn đề tài đồ án tốt nghiệp về điều phối robot tự hành bằng Reinforcement Learning.

### 🇬🇧 English subtitle:
> In late 2023, I participated in **DENSO Factory Hacks** — a collaboration between DENSO and FPT. I led a team of 4 to build a **smart Q&A system for factory maintenance engineers**: instead of manually searching through massive error databases, engineers could **ask questions in natural language** and get accurate answers in seconds. We **won 3rd prize nationally**.
>
> But more than the award, the hands-on factory experience at DENSO showed me the enormous potential of AI in manufacturing — and that became the **motivation** for my capstone on autonomous robot coordination with Reinforcement Learning.

---

## Slide 4: Đồ án tốt nghiệp — AGV Overview (35s)

### 🖥️ Trên slide (Tiếng Anh):
```
CAPSTONE PROJECT

Multi-Agent AGV Coordination
with Reinforcement Learning

Jul–Sep 2025 | 2 members
School of Mechanical Engineering, HUST

THE PROBLEM:
  How can multiple AGVs in a smart factory
  autonomously coordinate — assigning tasks,
  avoiding collisions, resolving deadlocks
  — through learning, not manual programming?

MY CONTRIBUTION:
  ✦ System architecture design
  ✦ RL algorithm (PPO + GNN) implementation
  ✦ Two-phase training pipeline (IL → PPO)
  ✦ Web-based simulation for benchmarking

📄 Paper: andrewhaward2310.github.io/gnn-il-ppo-paper
```

### 🎤 Lời nói (Tiếng Việt):
> Đây là đồ án tốt nghiệp của em. Bài toán đặt ra là: làm sao để nhiều xe tự hành AGV trong nhà máy có thể **tự phối hợp với nhau** — phân chia công việc, tránh va chạm, xử lý bế tắc — thông qua quá trình học, thay vì phải lập trình thủ công từng tình huống.
>
> Đây là đề tài nhóm 2 người. Em chịu trách nhiệm chính trong việc **thiết kế kiến trúc hệ thống** và **triển khai thuật toán Reinforcement Learning** — bao gồm pipeline huấn luyện hai giai đoạn và hệ thống mô phỏng để đánh giá hiệu suất. Em cũng đã viết bài báo nghiên cứu tóm tắt toàn bộ framework.

### 🇬🇧 English subtitle:
> This is my capstone project. The problem: how can multiple AGVs in a factory **autonomously coordinate** — assigning tasks, avoiding collisions, resolving deadlocks — through learning, rather than manually programming each scenario.
>
> This was a 2-person team project. I was primarily responsible for **designing the system architecture** and **implementing the Reinforcement Learning algorithm** — including the two-phase training pipeline and the benchmarking simulation. I also authored a research paper summarizing the entire framework.

---

## Slide 5: AGV — Kiến trúc kỹ thuật (30s)

### 🖥️ Trên slide (Tiếng Anh):
```
SYSTEM ARCHITECTURE: GNN-IL-PPO

┌───────────────────────────────────────────┐
│  DECISION LAYER (RL Brain)                │
│                                           │
│  GAT Encoder    → Spatial reasoning       │
│       ↓           (warehouse as graph)    │
│  Transformer    → Global coordination     │
│       ↓           (all robots + tasks)    │
│  PPO Policy     → Task assignment         │
│                   & path planning         │
└──────────────┬────────────────────────────┘
               ↓ Action commands
┌──────────────┴────────────────────────────┐
│  EXECUTION LAYER                          │
│                                           │
│  PID Controller   → Motion precision      │
│  A* Pathfinding   → Route calculation     │
│  Collision Avoid. → 3-tier protection     │
│    • Priority tie-breaking                │
│    • Mutual-wait detection                │
│    • Timeout rerouting                    │
└───────────────────────────────────────────┘

Training: IL (Behavioral Cloning) → PPO (Fine-tune)
```

### 🎤 Lời nói (Tiếng Việt):
> Hệ thống gồm hai tầng. **Tầng quyết định** là phần em thiết kế và triển khai — sử dụng mạng **Graph Attention Network** để mô hình hóa nhà kho dưới dạng đồ thị: mỗi robot, mỗi nhiệm vụ, mỗi điểm trên bản đồ là một nút, và thuật toán học cách chú ý (*attend*) vào các nút quan trọng nhất. Sau đó, **Transformer** thực hiện phối hợp toàn cục, và **PPO** đưa ra quyết định phân bổ nhiệm vụ.
>
> Điểm đặc biệt là quy trình huấn luyện hai giai đoạn: đầu tiên cho AI **bắt chước** expert qua Imitation Learning để khởi động nhanh, sau đó dùng PPO để **tự cải thiện vượt qua expert**.
>
> **Tầng thực thi** xử lý di chuyển chính xác với PID, tìm đường bằng A*, và hệ thống tránh va chạm ba lớp — từ phân quyền ưu tiên đến phát hiện bế tắc vòng và tự động tìm đường thay thế.

### 🇬🇧 English subtitle:
> The system has two layers. The **decision layer** is where I designed and implemented — using **Graph Attention Networks** to model the warehouse as a graph: each robot, task, and waypoint becomes a node, and the algorithm learns to *attend* to the most relevant nodes. Then, a **Transformer** performs global coordination, and **PPO** makes task assignment decisions.
>
> A key feature is the two-phase training: first, the AI **imitates** an expert through Imitation Learning for a quick start, then uses PPO to **self-improve beyond the expert**.
>
> The **execution layer** handles precise movement with PID, pathfinding with A*, and a three-tier collision avoidance system — from priority tie-breaking to circular deadlock detection and automatic rerouting.

---

## Slide 6: Kết quả + Các dự án khác (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
RESULTS

✅ Zero-collision operation with 3+ simultaneous AGVs
✅ RL policy outperformed heuristic expert in throughput
✅ 2x faster convergence with IL bootstrapping
✅ Full web-based simulation for benchmarking

OTHER PROJECTS AT HUST:

🌱 IoT Smart Garden — Backend Lead
   Microservices | MQTT → ESP32 → MongoDB/PostgreSQL/Redis
   → Real-time sensor data pipeline

📡 UWB Warehouse Tracking — Developer
   Ultra-Wideband indoor positioning
   🏅 Innovation & Scientific Research Award
```

### 🎤 Lời nói (Tiếng Việt):
> Về kết quả, hệ thống đạt được **zero collision** khi chạy 3 robot đồng thời. Policy RL đã **vượt qua thuật toán truyền thống** về tổng lượng hàng xử lý, nhờ khả năng phân bổ tải chủ động. Imitation Learning giúp **giảm một nửa thời gian huấn luyện** so với training RL từ đầu.
>
> Ngoài đồ án tốt nghiệp, trong quá trình học tại Bách khoa em cũng tham gia nhiều dự án liên quan: **IoT Smart Garden** với kiến trúc microservice xử lý dữ liệu cảm biến real-time, và **hệ thống quản lý kho hàng UWB** với định vị trong nhà — đạt Giải thưởng Nghiên cứu Đổi mới Sáng tạo của trường.

### 🇬🇧 English subtitle:
> In terms of results, the system achieved **zero collisions** with 3 simultaneous robots. The RL policy **outperformed the traditional heuristic** in overall throughput through proactive load balancing. Imitation Learning **halved training time** compared to RL from scratch.
>
> Beyond my capstone, I've also completed several related projects at HUST: an **IoT Smart Garden** with a real-time sensor data pipeline using microservice architecture, and a **UWB warehouse tracking system** for indoor positioning — which received the university's Innovation & Research Award.

---

## Slide 7: Tại sao VinMotion + Cảm ơn (20s)

### 🖥️ Trên slide (Tiếng Anh):
```
WHY VINMOTION

1. THE OPPORTUNITY
   The only company in Vietnam doing humanoid
   robotics at production scale — R&D → deployment

2. THE FIT
   Mechatronics + RL + Industrial AI experience
   → ready to contribute from day one

3. THE GROWTH
   Eager to learn IsaacGym, MuJoCo, ROS 2
   and transition from wheeled → bipedal robotics

────────────────────────────────────────────

THANK YOU

✉️ nguyen.ld2310@gmail.com
📱 +84 945 032 669
💻 github.com/AndrewHaward2310
```

### 🎤 Lời nói (Tiếng Việt):
> Tại sao VinMotion? Vì em tin rằng mình có thể **đóng góp giá trị thực** ngay từ sớm. Kinh nghiệm thiết kế hệ thống RL đa tác nhân, hiểu biết về quy trình sản xuất thực tế từ DENSO, và nền tảng Cơ điện tử — tất cả đều liên quan trực tiếp đến bài toán mà VinMotion đang giải quyết.
>
> Đồng thời, VinMotion là nơi em có thể **tiếp tục phát triển**: từ robot bánh xe sang humanoid, từ mô phỏng 2D sang IsaacGym và MuJoCo — đó là bước tiến tự nhiên mà em đang tìm kiếm.
>
> Cảm ơn anh/chị đã dành thời gian lắng nghe. Em rất mong có cơ hội được đóng góp cho VinMotion.

### 🇬🇧 English subtitle:
> Why VinMotion? Because I believe I can **deliver real value early on**. My experience designing multi-agent RL systems, understanding of real manufacturing processes from DENSO, and Mechatronics foundation — all directly relate to the problems VinMotion is solving.
>
> At the same time, VinMotion is where I can **continue to grow**: from wheeled robots to humanoids, from 2D simulation to IsaacGym and MuJoCo — that's the natural next step I'm looking for.
>
> Thank you for your time. I look forward to the opportunity to contribute to VinMotion.

---

## 📋 Hướng Dẫn Quay Video

### Công cụ đề xuất:
| Mục đích          | Công cụ                      | Ghi chú                             |
| ----------------- | ---------------------------- | ----------------------------------- |
| **Tạo slide**     | **Marp** (VS Code extension) | Viết Markdown → export PPTX/PDF     |
| **Quay video**    | OBS Studio (miễn phí)        | Webcam overlay + screen share slide |
| **Edit + Sub**    | CapCut / DaVinci Resolve     | Thêm sub tiếng Anh, cắt ghép        |
| **Auto subtitle** | CapCut Auto Captions         | Tự nhận dạng giọng nói → sub        |

### Mẹo quay:
1. **Ánh sáng:** Ngồi đối diện cửa sổ, tránh backlight
2. **Webcam:** Đặt góc dưới-phải hoặc trên-phải slide, kích thước nhỏ
3. **Nhìn camera:** Khi nói "motivation" parts (Slide 1, 7), nhìn thẳng vào camera
4. **Tốc độ nói:** ~130 từ/phút tiếng Việt = thoải mái trong 3 phút
5. **Practice:** Đọc to kịch bản 2-3 lần, bấm giờ, chỉnh tempo

---

## ⏱️ Phân Tích Timing Chi Tiết

|  Slide   | Số từ VN nói (ước tính) | Thời gian |
| :------: | :---------------------: | :-------: |
|    1     |         ~60 từ          |    25s    |
|    2     |         ~55 từ          |    20s    |
|    3     |         ~70 từ          |    25s    |
|    4     |         ~75 từ          |    35s    |
|    5     |         ~85 từ          |    30s    |
|    6     |         ~65 từ          |    25s    |
|    7     |         ~60 từ          |    20s    |
| **Tổng** |       **~470 từ**       | **~180s** |

> **Ghi chú:** 470 từ ÷ 130 từ/phút ≈ 3 phút 37 giây. Khi luyện, nếu vượt 3 phút thì ưu tiên rút ngắn Slide 5 (phần kiến trúc kỹ thuật).
