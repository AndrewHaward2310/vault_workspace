# 📝 Kịch Bản Presentation VinMotion — Option C (Hybrid)

> **Tổng thời lượng:** 3 phút (180s)
> **Ngôn ngữ thuyết trình:** Tiếng Việt
> **Ngôn ngữ slide:** Tiếng Anh
> **Phụ đề video:** Tiếng Anh
> **Format:** 7 slides tối giản — visual + keyword + 2-3 dòng hỗ trợ

---

## 🎯 Tổng Quan Cấu Trúc

|  Slide   | Nội dung                        | Thời lượng | Ghi chú                         |
| :------: | ------------------------------- | :--------: | ------------------------------- |
|    1     | Cover — Giới thiệu bản thân     |    25s     | Ấn tượng đầu tiên               |
|    2     | Background & Context            |    20s     | Mechatronics + RL journey       |
|    3     | Flagship: AGV Overview          |    30s     | Bài toán + vai trò              |
|    4     | AGV: Giải pháp kỹ thuật         |    35s     | Kiến trúc RL+PID                |
|    5     | AGV: Kết quả + Liên hệ Humanoid |    25s     | Impact + mapping sang VinMotion |
|    6     | Supporting: DENSO + IoT         |    25s     | Industrial mindset + real-time  |
|    7     | Why VinMotion & Thank You       |    20s     | Cam kết + liên hệ               |
| **Tổng** |                                 |  **180s**  |                                 |

---

## Slide 1: Cover (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
LE DUC NGUYEN
Mechatronics Engineering | HUST — Final Year

Reinforcement Learning × Industrial AI × Robotics

📍 Hanoi, Vietnam
🔗 github.com/AndrewHaward2310
```
> [!COMMENT]
> Lời văn làm sao để xuyên suốt toàn bộ bài thuyết trình thể hiện được giá trị tôi sẽ đem đến cho doanh nghiệm, cho vinmotion. 
### 🎤 Lời nói (Tiếng Việt):
> Xin chào anh/chị. Em là **Lê Đức Nguyên**, sinh viên năm cuối ngành **Cơ điện tử** tại Đại học Bách khoa Hà Nội. Trong suốt 5 năm đại học, em đã tập trung phát triển chuyên sâu vào hai hướng chính: **Reinforcement Learning** cho hệ thống multi-robot và **AI ứng dụng trong công nghiệp**. Hôm nay em xin được chia sẻ hành trình và lý do em muốn gia nhập VinMotion.
> [!FIX]
> Tôi cảm giác điểm vào chưa được wow cho lắm, cần chỉnh sửa lại để có điểm nhấn hơn. Hãy xem cả CV tôi mới gửi vào để chỉnh sửa lại nội dung cho phù hợp. Tôi nghĩ nên chia sẻ luôn mục tiêu tôi đến với vinmotion và vị trí tôi muốn apply vào ngay từ đầu để thể hiện sự rõ ràng. 
### 🇬🇧 English subtitle:
> Hello. I'm **Le Duc Nguyen**, a final-year **Mechatronics Engineering** student at Hanoi University of Science and Technology. Over 5 years, I've specialized in **Reinforcement Learning** for multi-robot systems and **industrial AI applications**. Today I'd like to share my journey and why I want to join VinMotion.

---

## Slide 2: Background & Context (20s)

### 🖥️ Trên slide (Tiếng Anh):
```
WHY MECHATRONICS?

The discipline that CREATES robots
— not just programs them.

[Timeline nhỏ]
2021 → Mechatronics @ HUST
2022 → UWB Location Tracking 🏅
2023 → DENSO Factory Hacks 🏆
2025 → Multi-Agent AGV + RL (Capstone)
2026 → VinMotion?

Core: Control Systems | Embedded | Robotics | AI/ML
```

### 🎤 Lời nói (Tiếng Việt):
> Em chọn ngành Cơ điện tử vì đây chính là ngành **tạo ra robot** — nơi mà cơ khí, điện tử, điều khiển và AI hội tụ. Từ năm 2 em đã bắt đầu nghiên cứu thực tế: hệ thống UWB tracking trong kho hàng, rồi thi hackathon AI công nghiệp cùng DENSO, và mới nhất là đồ án tốt nghiệp về **điều phối đa robot bằng Reinforcement Learning** — project mà em sẽ trình bày chi tiết tiếp theo.

> [!FIX]
> Đoạn này cảm giác chưa được mượt mà tự nhiên, không nên nói "Từ năm 2 em đã bắt đầu nghiên cứu thực tế" nghe hơi bị gượng, ngoài ra trong tình huống tôi không thể hiện tốt sẽ bị đánh giá là nói sai sự thật, tức là đừng để cho cảm giác bị lố quá khiến người nghe suy nghĩ rằng à thằng này sẽ giỏi phải thử thách nó khó. 

### 🇬🇧 English subtitle:
> I chose Mechatronics because it's the discipline that **creates robots** — where mechanics, electronics, control, and AI converge. Since my second year, I've pursued hands-on research: UWB indoor tracking, DENSO industrial AI hackathon, and most recently, my capstone on **multi-agent robot coordination with RL** — which I'll present in detail next.

---

## Slide 3: Flagship Project — AGV Overview (30s)

### 🖥️ Trên slide (Tiếng Anh):
```
MULTI-AGENT AGV COORDINATION
WITH REINFORCEMENT LEARNING

Role: Project Lead | Jul–Sep 2025

THE CHALLENGE:
Coordinate multiple robots simultaneously
— dispatching tasks, avoiding collisions,
resolving deadlocks in real-time

[Diagram/hình minh họa: Factory floor với 3 AGV di chuyển]

Tech: PPO | GNN (GAT) | Imitation Learning | PID | Python
```

### 🎤 Lời nói (Tiếng Việt):
> Đây là đồ án em tâm đắc nhất. Bài toán đặt ra là: **Làm sao để nhiều robot tự hành trong nhà kho có thể phối hợp với nhau?** — phân chia công việc, tránh va chạm, và xử lý bế tắc hoàn toàn bằng AI, không cần lập trình tay từng bước. Đây cũng chính xác là bài toán mà robot Motion của VinMotion phải giải quyết khi triển khai tại VinFast.

> [!FIX]
> "Đây là đồ án em tâm đắc nhất" nghe hơi bị lố, nên sửa lại thành "Đây là đồ án tốt nghiệp của em", khi đưa ra thông tin liên quan đến bài toán hay là liên quan đến doanh nghiệp cần đảm bảo độ chính xác, không nên nói quá lên về khả năng của tôi. Hãy thể hiện sự khiêm tốn nhưng vẫn tự tin vào khả năng của mình.

> Em là **trưởng nhóm** — chịu trách nhiệm toàn bộ thiết kế kiến trúc hệ thống và triển khai thuật toán RL.

> [!FIX]
> "Em là trưởng nhóm" nghe hơi bị lố, nên sửa lại thành "Em là thành viên trong nhóm" hoặc "Em là người chịu trách nhiệm chính trong việc thiết kế kiến trúc hệ thống và triển khai thuật toán RL".

### 🇬🇧 English subtitle:
> This is my most important project. The problem: **How can multiple autonomous robots in a warehouse coordinate with each other?** — dispatching tasks, avoiding collisions, and resolving deadlocks entirely through AI, with no manual programming. This is exactly the same challenge VinMotion's Motion robots face when deployed at VinFast.

> I served as **project lead** — responsible for the entire system architecture design and RL algorithm implementation.

---

## Slide 4: AGV — Technical Solution (35s)

### 🖥️ Trên slide (Tiếng Anh):
```
TWO-LAYER ARCHITECTURE

┌─────────────────────────────────────────────┐
│  HIGH-LEVEL DECISION (AI Brain)             │
│  PPO Agent → GNN Encoder → Imitation Learn. │
│  Task assignment & path planning            │
└──────────────────┬──────────────────────────┘
                   ↓ Action commands
┌──────────────────┴──────────────────────────┐
│  LOW-LEVEL CONTROL (Motor Execution)        │
│  PID Controller → Collision Avoidance       │
│  Precise velocity & heading control         │
└─────────────────────────────────────────────┘

→ Same architecture humanoid robots use:
  AI planning + Motor control
```

### 🎤 Lời nói (Tiếng Việt):
> Giải pháp của em dùng **kiến trúc hai tầng** — giống cách robot humanoid hoạt động.

> **Tầng trên** là bộ não AI: thuật toán **PPO** — một phương pháp Reinforcement Learning tiên tiến — kết hợp với **Graph Neural Network** để robot "nhìn thấy" mối quan hệ không gian giữa các robot khác, các nhiệm vụ, và các điểm trong nhà kho. Em cũng dùng **Imitation Learning** để rút ngắn thời gian huấn luyện — cho AI học từ expert trước, sau đó tự cải thiện vượt qua expert đó.

> **Tầng dưới** là bộ điều khiển **PID** — đảm bảo robot di chuyển mượt mà, chính xác. Song song là hệ thống **phòng tránh va chạm** ba lớp: phân quyền ưu tiên, phát hiện bế tắc vòng, và tự động tìm đường thay thế.

> Đây chính là kiến trúc mà robot humanoid cũng sử dụng: **AI ra quyết định ở tầng cao, motor control chính xác ở tầng thấp**.

### 🇬🇧 English subtitle:
> My solution uses a **two-layer architecture** — the same way humanoid robots operate.

> The **upper layer** is the AI brain: **PPO** — an advanced Reinforcement Learning algorithm — combined with a **Graph Neural Network** so robots can "see" spatial relationships between other robots, tasks, and waypoints. I also used **Imitation Learning** to accelerate training — letting AI learn from an expert first, then self-improve beyond that expert.

> The **lower layer** is a **PID controller** — ensuring smooth, precise robot movement. Alongside this is a **three-tier collision avoidance** system: priority tie-breaking, circular deadlock detection, and automatic rerouting.

> This is exactly the architecture humanoid robots use: **AI decision-making at the high level, precise motor control at the low level**.

---

## Slide 5: AGV — Results & Humanoid Connection (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
RESULTS & VINMOTION RELEVANCE

✅ Zero-collision operation with 3+ AGVs
✅ PPO outperformed heuristic expert in throughput
✅ 2x faster training with Imitation Learning bootstrap

   AGV System          →    Humanoid Robot
   ─────────────────        ─────────────────
   PPO task planning   →    High-level planner
   GNN spatial reason  →    Scene understanding
   PID velocity ctrl   →    Joint motor control
   Collision avoidance →    Balance & fall prevent.
   Multi-agent coord.  →    Multi-limb coordination
```

### 🎤 Lời nói (Tiếng Việt):
> Kết quả: hệ thống đạt được **zero collision** với 3 robot chạy đồng thời, policy RL **vượt trội hơn thuật toán truyền thống** về throughput nhờ khả năng phân bổ tải thông minh, và Imitation Learning giúp **rút ngắn gấp đôi** thời gian huấn luyện.

> Điều quan trọng nhất: mỗi thành phần em xây dựng đều có **đối chiếu trực tiếp** sang robot humanoid. PPO planning tương ứng high-level planner, GNN tương ứng scene understanding, PID control tương ứng joint motor control. Những kỹ năng này em có thể áp dụng ngay khi gia nhập VinMotion.

### 🇬🇧 English subtitle:
> Results: the system achieved **zero collisions** with 3+ simultaneous robots, the RL policy **outperformed the traditional heuristic** in throughput through intelligent load balancing, and Imitation Learning **halved training time**.

> Most importantly: every component I built has a **direct parallel** to humanoid robotics. PPO planning maps to high-level planning, GNN to scene understanding, PID to joint motor control. These skills are directly transferable to VinMotion.

---

## Slide 6: Supporting Evidence (25s)

### 🖥️ Trên slide (Tiếng Anh):
```
INDUSTRIAL AI & REAL-TIME SYSTEMS

🏆 DENSO Factory Hacks 2023 — 3rd Prize
   LLM + Elasticsearch + Weaviate
   → AI error detection for real factories
   → Led team of 4 under competition pressure

🌱 IoT Smart Garden — Backend Lead
   MQTT → ESP32 → MongoDB/PostgreSQL/Redis
   → Real-time sensor data pipeline
   → Microservice architecture with Docker

KEY TAKEAWAY:
I understand factory-grade deployment
— where VinMotion's robots operate.
```

### 🎤 Lời nói (Tiếng Việt):
> Ngoài AGV, em có hai trải nghiệm bổ trợ quan trọng.

> Tại cuộc thi **DENSO Factory Hacks** — tổ chức bởi DENSO và FPT — em dẫn nhóm 4 người xây dựng hệ thống phát hiện lỗi nhà máy bằng AI, **đạt giải 3 toàn quốc**. Trải nghiệm này dạy em tư duy **"factory-grade"**: hệ thống phải chạy liên tục, độ trễ phải thấp, và phải có fallback khi AI gặp lỗi.

> Dự án **IoT Smart Garden** giúp em xây dựng kỹ năng xử lý dữ liệu cảm biến real-time — từ MQTT protocol đến kiến trúc microservice — hoàn toàn áp dụng được cho telemetry của robot.

### 🇬🇧 English subtitle:
> Beyond AGV, I have two key supporting experiences.

> At the **DENSO Factory Hacks** — organized by DENSO and FPT — I led a team of 4 to build a factory error detection system using AI, **winning 3rd prize nationally**. This taught me the **"factory-grade" mindset**: systems must run 24/7, latency must be low, and there must be fallback mechanisms.

> The **IoT Smart Garden** project built my skills in real-time sensor data processing — from MQTT protocol to microservice architecture — directly applicable to robot telemetry.

---

## Slide 7: Why VinMotion & Thank You (20s)

### 🖥️ Trên slide (Tiếng Anh):
```
WHY VINMOTION?

1. UNIQUE — The only place in Vietnam
   doing humanoid robotics at production scale

2. PERFECT FIT — Mechatronics + RL + Industrial AI
   = exactly what VinMotion needs

3. GROWTH — From AGV (wheeled, 2D)
   → Humanoid (bipedal, 3D)
   Ready to master IsaacGym & MuJoCo

────────────────────────────────────

THANK YOU

✉️ nguyen.ld2310@gmail.com
📱 +84 945 032 669
💻 github.com/AndrewHaward2310

"Every project I've built was preparing me
 for this — to bring humanoid robotics
 from research to reality."
```

### 🎤 Lời nói (Tiếng Việt):
> Tại sao VinMotion? Vì VinMotion là **nơi duy nhất tại Việt Nam** nghiên cứu humanoid robot ở quy mô sản xuất thực tế — không chỉ trong phòng lab. Background Cơ điện tử, kinh nghiệm RL multi-agent, và tư duy công nghiệp từ DENSO — tất cả hội tụ đúng vào những gì VinMotion cần. Em sẵn sàng chuyển đổi từ robot bánh xe AGV sang humanoid hai chân — và VinMotion là nơi tốt nhất để thực hiện bước nhảy đó.

> Cảm ơn anh/chị đã lắng nghe. Em rất mong được cơ hội đóng góp cho tương lai robotics Việt Nam cùng VinMotion.

### 🇬🇧 English subtitle:
> Why VinMotion? Because VinMotion is **the only place in Vietnam** doing humanoid robotics at real production scale — not just in a lab. My Mechatronics background, multi-agent RL experience, and industrial mindset from DENSO all converge on exactly what VinMotion needs. I'm ready to transition from wheeled AGV robots to bipedal humanoids — and VinMotion is the best place to make that leap.

> Thank you for listening. I look forward to contributing to Vietnam's robotics future together with VinMotion.

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

|  Slide   | Nội dung slide (EN) | Số từ VN nói | Thời gian ước tính |
| :------: | ------------------- | :----------: | :----------------: |
|    1     | Cover               |    ~65 từ    |        25s         |
|    2     | Background          |    ~55 từ    |        20s         |
|    3     | AGV Overview        |    ~80 từ    |        30s         |
|    4     | AGV Technical       |   ~100 từ    |        35s         |
|    5     | AGV Results         |    ~65 từ    |        25s         |
|    6     | DENSO + IoT         |    ~70 từ    |        25s         |
|    7     | Why + Thanks        |    ~55 từ    |        20s         |
| **Tổng** |                     | **~490 từ**  |     **~180s**      |

> [!NOTE]
> Tốc độ nói trung bình tiếng Việt tự nhiên: 120-150 từ/phút.
> 490 từ ÷ 130 từ/phút ≈ 3 phút 46s → cần luyện tập để nói lưu loát, cắt bớt nếu cần.
> **Khuyến nghị**: Khi luyện, nếu vượt 3 phút thì ưu tiên rút ngắn Slide 4 (phần kỹ thuật chi tiết nhất).
