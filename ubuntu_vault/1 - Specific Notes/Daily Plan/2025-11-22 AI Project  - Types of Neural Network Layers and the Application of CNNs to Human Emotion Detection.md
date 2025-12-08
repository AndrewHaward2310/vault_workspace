---
title: AI Project  - Human emotions detection using CNN
allDay: false
startTime: 17:00
endTime: 19:00
date: 2025-11-22
completed:
tags:
  - basic
  - CNN
  - deeplearning
  - layer
---
# I. Common Neural Network layers 
## 1. Fully Connected layer
- It also known as the dense layer
- It is a layer in the neural network in which each neuron of this layer will connect to all neurons of the previous layer and the next layer
- ![[Pasted image 20251122170222.png]]
- In fully connected layer, Each neuron will take the input value from all the neurons of the previous layer and apply the weights and bias to create the output 
- ![[Pasted image 20251122170552.png]]
- Fully connected layer is a matrix will receive input as a vector and it create the output as a vector 
- it has the ability to synthesize and encapsulate all the information from previous layers help make predictions in the final layer 
- Advantage:
	- strongly connect: each neuron in the layer will connect with all the neurons of the previous layer => learn complex relationships 
	- extremely suitable for classification problems
- Disadvantage:
	- it consumes  computational resources and memory. It has very large number of parameters 
	- over-fitting
	- it is not suitable for the structured data: It doesn't store information about the spatial and temporal structure of the data
- Using:
	- The end of the neural network 
	- in the multi-layer perceptron 
## 2. Convolutional layer
- it is specially designed to process grip-shaped data such as images. It uses the filter or kernel. This filter is much smaller in size than the tire input image. the filter will move , thereby detecting local features 
- Advantage: 
	- Ability to detect the local features. it can learn features such as edges, textures, and local details in the data => the model understand the spatial structure of the data
	- This is an extremely parameter-saving layer => reducing the risk of over-fitting and saving the computational resources 
	- Invariance to position: When the features appear in different positions in the image, the model is still able to recognize these features 
	- Maintaining the spatial structure 
- Disadvantage:
	- it is not effective when it applied to data types that do not have spatial or order properties  such as tabular data
	- it has limited  learning capabilities for global features 
- Using:
	- using in CNN in problems related to  processing 
	- it usually appears the first layers 
	- it is also often used in models related to processing sequential data or time series 
## 3. Pooling layer 
- it is a type of layer in a CNN that has function of reducing the size of the input by down-sampling 
- Input data into sub-regions and then applying a calculation, usually the max method which takes the maximum element or  the average method, to reduce the information from each region into a representative value  
- Max pooling is often used to extract the most prominent features. 
- Average pooling helps reduce noise and create a more comprehensive representation 
- Advantage:
	- Reduce the size and the number of parameters of the model
	- Prevent the over-fitting
	- it helps stabilize the features. It retains the main features while ignoring unnecessary details, increase the generalization of the model
- Disadvantage:
	- Losing detailed information
	- It is not flexible for global features 
	- Reduce the resolution 
- Using:
	- it appears between convolutional layers or the end of the CNN, especially before reaching the Fully connected layer 
## 4. Activation layer 
-  ![[Pasted image 20251122182138.png]]
- The activation layer will apply a Non-linear activation function on the output of Convolutional layer or Fully Connected layer  
- A neural network is equivalent to a  f(x). It maps each input X to a output Y. the relationships between X and Y is very complex in reality, thereby linear layers will not be able to represent  this complex relationship. When combining the linear layers with non-linear layers as activation layer will help the neural network to be able to learn both simple and complex relationships in the data
- ![[Pasted image 20251122183136.png]]
- ![[Pasted image 20251122183222.png]]
- ![[Pasted image 20251122183255.png]]
- ![[Pasted image 20251122184817.png]]
- Advantage:
	- Create a non-linear. it helps neural network learn and represent non-linear relationships  
	- Adjust the output
	- Calculate the probability 
- Disadvantage:
	- Vanishing Gradient: Sigmoid or Tanh can lead to the fact that gradient will be very small at the edges => the learning process is stopped 
	- ReLU can cause the phenomenon of dead neurons. If the input is a negative input value, the output will always be 0. If a neuron continuously receives a negative input value, it can die, which means not allowed to update its weights and not involved in the training process
- Using:
	- it appear right after the linear layers + normalization layers 
## 5. Normalization layer
- it is a type of layer in the neural network that is responsible for normalizing the input values to keep the values in a certain bin
- it is especially useful for stabilizing the training process and speeding up the convergence of the model
- it performs transformations on the data to ensure that the values are evenly distributed and avoid the vanishing gradient as the exploring gradient 
- 4 common types of normalization layer:
	- Batch Norm: normalization on the batch data during the training process 
	- Layer Norm: normalization on each layer, commonly used in recurrent neural network 
	- Instance Norm 
	- Group Norm
	- ![[Pasted image 20251122185501.png]]
- Advantage: 
	- Avoid over-fitting and increase accuracy of model 
	- remaining stabilize of gradient
- Disadvantage:
	- Batch Norm: it is not effective for sequential neural networks or recurrent neural network. It also requires Batch to be large enough to calculate the mean and variance accurately 
## 6. Dropout layer 
- It can be considered a normalization technique introduced to minimize the phenomenon of over-fitting 
- In the training process, Dropout layer will randomly disable some neurons by setting their values to 0 with a certain probability ratio 
- the technique aims to prevent the model from being too dependent on a small set of neurons and encourage neurons to learn more diverse features \
- Dropout rate
- Advantage: 
	- avoid the over-fitting 
	- increase the robustness of the model
	- simulate different sets 
- Disadvantage:
	- reduce efficiency during training: If dropout rate is not set appropriately, dropout can reduce the number of active neurons during training, thereby leading to a decrease in convergence speed or requiring longer training time 
	- it is not suitable for some types of models such as RNN 
- Using:
	- Between fully connected layers 
![[Pasted image 20251122191231.png]]