inputnodes = [1,2]
hidden1 = [[1,3],[1,4],[2,3],[2,6]]
output = [[3,7],[4,7],[4,8],[5,7],[5,8],[6,8]]

def main():
    print("Running function: Update Weight")
    sigma_defaultValue = 1

class Node():
    def Node(inputNodeId, outputNodeId, value):
        self._inputNodeId = inputNodeId
        self._outputNodeId = outputNodeId
        self._value = value

def UpdateWeight(sigma = sigma_defaultValue, inputNode, outputNode):
        print("Update the weight")
        self._weight = sigma * (inputNode._value) * (inputNode._value)
        
if __name__ == '__main__':
    main()