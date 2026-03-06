import axios from "axios";

interface Pixel {
  x: number
  y: number
  color: string
}
const API_URL = "https://localhost:7009/api/Pixels"

export const getPixels = async () => {
  const response = await axios.get(API_URL)
  return response.data
}