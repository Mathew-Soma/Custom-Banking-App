// Helper widgets 
  import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget buildInputField({
    required String label,
    bool obscure = false,
    String? hint,
    IconData? prefixIcon,
    bool digitsOnly = false,
  }){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          if(prefixIcon != null)...[
             Icon(prefixIcon, color: Colors.grey[700]),
             const SizedBox(width: 8)
          ],
          Text(
          "$label:",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black45,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            obscureText: obscure, 
            keyboardType:
                digitsOnly ? TextInputType.number : TextInputType.text, 
            inputFormatters: digitsOnly
                ? [FilteringTextInputFormatter.digitsOnly] 
                : [],
            decoration: InputDecoration(
              hintText: hint,     
              border: InputBorder.none, 
              isDense: true,      
            ),
          ),
          
        )

        ],
      ),
    );
  }