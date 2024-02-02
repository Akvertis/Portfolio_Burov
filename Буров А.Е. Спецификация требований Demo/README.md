<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru-ru" xml:lang="ru-ru">
<head>
  <meta charset="utf-8" />
  <meta name="generator" content="pandoc" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
  Спецификация требований
  <style type="text/css">
      code{white-space: pre-wrap;}
      span.smallcaps{font-variant: small-caps;}
      span.underline{text-decoration: underline;}
      div.column{display: inline-block; vertical-align: top; width: 50%;}
  
 <style>.markdown-body .octicon{display:inline-block;fill:currentColor;vertical-align:text-bottom}.markdown-body .anchor{float:left;line-height:1;margin-left:-20px;padding-right:4px}.markdown-body .anchor:focus{outline:0}.markdown-body h1 .octicon-link,.markdown-body h2 .octicon-link,.markdown-body h3 .octicon-link,.markdown-body h4 .octicon-link,.markdown-body h5 .octicon-link,.markdown-body h6 .octicon-link{color:#1b1f23;vertical-align:middle;visibility:hidden}.markdown-body a,.markdown-body h1:hover .anchor,.markdown-body h2:hover .anchor,.markdown-body h3:hover .anchor,.markdown-body h4:hover .anchor,.markdown-body h5:hover .anchor,.markdown-body h6:hover .anchor{text-decoration:none}.markdown-body h1:hover .anchor .octicon-link,.markdown-body h2:hover .anchor .octicon-link,.markdown-body h3:hover .anchor .octicon-link,.markdown-body h4:hover .anchor .octicon-link,.markdown-body h5:hover .anchor .octicon-link,.markdown-body h6:hover .anchor .octicon-link{visibility:visible}.markdown-body h1:hover .anchor .octicon-link:before,.markdown-body h2:hover .anchor .octicon-link:before,.markdown-body h3:hover .anchor .octicon-link:before,.markdown-body h4:hover .anchor .octicon-link:before,.markdown-body h5:hover .anchor .octicon-link:before,.markdown-body h6:hover .anchor .octicon-link:before{width:16px;height:16px;content:' ';display:inline-block;background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' version='1.1' width='16' height='16' aria-hidden='true'%3E%3Cpath fill-rule='evenodd' d='M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z'%3E%3C/path%3E%3C/svg%3E")}.markdown-body{-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;color:#24292e;font-family:-apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji;font-size:16px;line-height:1.5;word-wrap:break-word;min-width:838px;max-width:838px;overflow:auto;border-width:1px;border-style:solid;border-color:rgb(225, 228, 232);border-image:initial;padding:32px;margin:20px auto;}.markdown-body details{display:block}.markdown-body summary{display:list-item}.markdown-body a{background-color:initial;color:#0366d6}.markdown-body a:active,.markdown-body a:hover{outline-width:0}.markdown-body strong{font-weight:600}.markdown-body h1{margin:.67em 0}.markdown-body img{border-style:none;max-width:100%;box-sizing:initial;background-color:#fff}.markdown-body hr{box-sizing:initial;overflow:hidden;background:0 0;border-bottom:1px solid #eaecef;border-bottom-color:#eaecef;height:.25em;padding:0;margin:24px 0;background-color:#e1e4e8;border:0}.markdown-body input{font:inherit;margin:0;overflow:visible;font-family:inherit;font-size:inherit;line-height:inherit}.markdown-body [type=checkbox]{box-sizing:border-box;padding:0}:root{--color-scale-black: #1b1f23;--color-scale-white: #fff;--color-scale-gray-0: #fafbfc;--color-scale-gray-1: #f6f8fa;--color-scale-gray-2: #e1e4e8;--color-scale-gray-3: #d1d5da;--color-scale-gray-4: #959da5;--color-scale-gray-5: #6a737d;--color-scale-gray-6: #586069;--color-scale-gray-7: #444d56;--color-scale-gray-8: #2f363d;--color-scale-gray-9: #24292e;--color-scale-blue-0: #f1f8ff;--color-scale-blue-1: #dbedff;--color-scale-blue-2: #c8e1ff;--color-scale-blue-3: #79b8ff;--color-scale-blue-4: #2188ff;--color-scale-blue-5: #0366d6;--color-scale-blue-6: #005cc5;--color-scale-blue-7: #044289;--color-scale-blue-8: #032f62;--color-scale-blue-9: #05264c;--color-scale-green-0: #f0fff4;--color-scale-green-1: #dcffe4;--color-scale-green-2: #bef5cb;--color-scale-green-3: #85e89d;--color-scale-green-4: #34d058;--color-scale-green-5: #28a745;--color-scale-green-6: #22863a;--color-scale-green-7: #176f2c;--color-scale-green-8: #165c26;--color-scale-green-9: #144620;--color-scale-yellow-0: #fffdef;--color-scale-yellow-1: #fffbdd;--color-scale-yellow-2: #fff5b1;--color-scale-yellow-3: #ffea7f;--color-scale-yellow-4: #ffdf5d;--color-scale-yellow-5: #ffd33d;--color-scale-yellow-6: #f9c513;--color-scale-yellow-7: #dbab09;--color-scale-yellow-8: #b08800;--color-scale-yellow-9: #735c0f;--color-scale-orange-0: #fff8f2;--color-scale-orange-1: #ffebda;--color-scale-orange-2: #ffd1ac;--color-scale-orange-3: #ffab70;--color-scale-orange-4: #fb8532;--color-scale-orange-5: #f66a0a;--color-scale-orange-6: #e36209;--color-scale-orange-7: #d15704;--color-scale-orange-8: #c24e00;--color-scale-orange-9: #a04100;--color-scale-red-0: #ffeef0;--color-scale-red-1: #ffdce0;--color-scale-red-2: #fdaeb7;--color-scale-red-3: #f97583;--color-scale-red-4: #ea4a5a;--color-scale-red-5: #d73a49;--color-scale-red-6: #cb2431;--color-scale-red-7: #b31d28;--color-scale-red-8: #9e1c23;--color-scale-red-9: #86181d;--color-scale-purple-0: #f5f0ff;--color-scale-purple-1: #e6dcfd;--color-scale-purple-2: #d1bcf9;--color-scale-purple-3: #b392f0;--color-scale-purple-4: #8a63d2;--color-scale-purple-5: #6f42c1;--color-scale-purple-6: #5a32a3;--color-scale-purple-7: #4c2889;--color-scale-purple-8: #3a1d6e;--color-scale-purple-9: #29134e;--color-scale-pink-0: #ffeef8;--color-scale-pink-1: #fedbf0;--color-scale-pink-2: #f9b3dd;--color-scale-pink-3: #f692ce;--color-scale-pink-4: #ec6cb9;--color-scale-pink-5: #ea4aaa;--color-scale-pink-6: #d03592;--color-scale-pink-7: #b93a86;--color-scale-pink-8: #99306f;--color-scale-pink-9: #6d224f;--color-auto-black: #1b1f23;--color-auto-white: #fff;--color-auto-gray-0: #fafbfc;--color-auto-gray-1: #f6f8fa;--color-auto-gray-2: #e1e4e8;--color-auto-gray-3: #d1d5da;--color-auto-gray-4: #959da5;--color-auto-gray-5: #6a737d;--color-auto-gray-6: #586069;--color-auto-gray-7: #444d56;--color-auto-gray-8: #2f363d;--color-auto-gray-9: #24292e;--color-auto-blue-0: #f1f8ff;--color-auto-blue-1: #dbedff;--color-auto-blue-2: #c8e1ff;--color-auto-blue-3: #79b8ff;--color-auto-blue-4: #2188ff;--color-auto-blue-5: #0366d6;--color-auto-blue-6: #005cc5;--color-auto-blue-7: #044289;--color-auto-blue-8: #032f62;--color-auto-blue-9: #05264c;--color-auto-green-0: #f0fff4;--color-auto-green-1: #dcffe4;--color-auto-green-2: #bef5cb;--color-auto-green-3: #85e89d;--color-auto-green-4: #34d058;--color-auto-green-5: #28a745;--color-auto-green-6: #22863a;--color-auto-green-7: #176f2c;--color-auto-green-8: #165c26;--color-auto-green-9: #144620;--color-auto-yellow-0: #fffdef;--color-auto-yellow-1: #fffbdd;--color-auto-yellow-2: #fff5b1;--color-auto-yellow-3: #ffea7f;--color-auto-yellow-4: #ffdf5d;--color-auto-yellow-5: #ffd33d;--color-auto-yellow-6: #f9c513;--color-auto-yellow-7: #dbab09;--color-auto-yellow-8: #b08800;--color-auto-yellow-9: #735c0f;--color-auto-orange-0: #fff8f2;--color-auto-orange-1: #ffebda;--color-auto-orange-2: #ffd1ac;--color-auto-orange-3: #ffab70;--color-auto-orange-4: #fb8532;--color-auto-orange-5: #f66a0a;--color-auto-orange-6: #e36209;--color-auto-orange-7: #d15704;--color-auto-orange-8: #c24e00;--color-auto-orange-9: #a04100;--color-auto-red-0: #ffeef0;--color-auto-red-1: #ffdce0;--color-auto-red-2: #fdaeb7;--color-auto-red-3: #f97583;--color-auto-red-4: #ea4a5a;--color-auto-red-5: #d73a49;--color-auto-red-6: #cb2431;--color-auto-red-7: #b31d28;--color-auto-red-8: #9e1c23;--color-auto-red-9: #86181d;--color-auto-purple-0: #f5f0ff;--color-auto-purple-1: #e6dcfd;--color-auto-purple-2: #d1bcf9;--color-auto-purple-3: #b392f0;--color-auto-purple-4: #8a63d2;--color-auto-purple-5: #6f42c1;--color-auto-purple-6: #5a32a3;--color-auto-purple-7: #4c2889;--color-auto-purple-8: #3a1d6e;--color-auto-purple-9: #29134e;--color-auto-pink-0: #ffeef8;--color-auto-pink-1: #fedbf0;--color-auto-pink-2: #f9b3dd;--color-auto-pink-3: #f692ce;--color-auto-pink-4: #ec6cb9;--color-auto-pink-5: #ea4aaa;--color-auto-pink-6: #d03592;--color-auto-pink-7: #b93a86;--color-auto-pink-8: #99306f;--color-auto-pink-9: #6d224f;--color-text-primary: #24292e;--color-text-secondary: #586069;--color-text-tertiary: #6a737d;--color-text-placeholder: #6a737d;--color-text-disabled: #6a737d;--color-text-inverse: #fff;--color-text-link: #0366d6;--color-text-danger: #cb2431;--color-text-success: #22863a;--color-text-warning: #b08800;--color-text-white: #fff;--color-icon-primary: #24292e;--color-icon-secondary: #586069;--color-icon-tertiary: #959da5;--color-icon-info: #0366d6;--color-icon-danger: #d73a49;--color-icon-success: #22863a;--color-icon-warning: #b08800;--color-border-primary: #e1e4e8;--color-border-secondary: #eaecef;--color-border-tertiary: #d1d5da;--color-border-overlay: #e1e4e8;--color-border-inverse: #fff;--color-border-info: #0366d6;--color-border-danger: #d73a49;--color-border-success: #34d058;--color-border-warning: #f9c513;--color-bg-canvas: #fff;--color-bg-canvas-mobile: #fff;--color-bg-canvas-inverse: #24292e;--color-bg-canvas-inset: #f6f8fa;--color-bg-primary: #fff;--color-bg-secondary: #fafbfc;--color-bg-tertiary: #f6f8fa;--color-bg-overlay: #fff;--color-bg-backdrop: rgba(27,31,35,0.5);--color-bg-info: #f1f8ff;--color-bg-info-inverse: #0366d6;--color-bg-danger: #ffeef0;--color-bg-danger-inverse: #d73a49;--color-bg-success: #dcffe4;--color-bg-success-inverse: #28a745;--color-bg-warning: #fff5b1;--color-bg-warning-inverse: #ffd33d;--color-shadow-small: 0 1px 0 rgba(27,31,35,0.04);--color-shadow-medium: 0 3px 6px rgba(149,157,165,0.15);--color-shadow-large: 0 8px 24px rgba(149,157,165,0.2);--color-shadow-extra-large: 0 12px 48px rgba(149,157,165,0.3);--color-shadow-highlight: inset 0 1px 0 hsla(0,0%,100%,0.25);--color-shadow-inset: inset 0 1px 0 rgba(225,228,232,0.2);--color-state-hover-primary-bg: #0366d6;--color-state-hover-primary-border: #0366d6;--color-state-hover-primary-text: #fff;--color-state-hover-primary-icon: #fff;--color-state-hover-secondary-bg: #f6f8fa;--color-state-hover-secondary-border: #f6f8fa;--color-state-selected-primary-bg: #0366d6;--color-state-selected-primary-border: #0366d6;--color-state-selected-primary-text: #fff;--color-state-selected-primary-icon: #fff;--color-state-focus-border: #0366d6;--color-state-focus-shadow: 0 0 0 3px rgba(3,102,214,0.3);--color-fade-fg-10: rgba(27,31,35,0.1);--color-fade-fg-15: rgba(27,31,35,0.15);--color-fade-fg-30: rgba(27,31,35,0.3);--color-fade-fg-50: rgba(27,31,35,0.5);--color-fade-fg-70: rgba(27,31,35,0.7);--color-fade-fg-85: rgba(27,31,35,0.85);--color-fade-black-10: rgba(27,31,35,0.1);--color-fade-black-15: rgba(27,31,35,0.15);--color-fade-black-30: rgba(27,31,35,0.3);--color-fade-black-50: rgba(27,31,35,0.5);--color-fade-black-70: rgba(27,31,35,0.7);--color-fade-black-85: rgba(27,31,35,0.85);--color-fade-white-10: hsla(0,0%,100%,0.1);--color-fade-white-15: hsla(0,0%,100%,0.15);--color-fade-white-30: hsla(0,0%,100%,0.3);--color-fade-white-50: hsla(0,0%,100%,0.5);--color-fade-white-70: hsla(0,0%,100%,0.7);--color-fade-white-85: hsla(0,0%,100%,0.85);--color-alert-info-text: #24292e;--color-alert-info-icon: rgba(4,66,137,0.6);--color-alert-info-bg: #dbedff;--color-alert-info-border: rgba(4,66,137,0.2);--color-alert-warn-text: #24292e;--color-alert-warn-icon: #b08800;--color-alert-warn-bg: #fffbdd;--color-alert-warn-border: rgba(176,136,0,0.2);--color-alert-error-text: #24292e;--color-alert-error-icon: rgba(158,28,35,0.6);--color-alert-error-bg: #ffe3e6;--color-alert-error-border: rgba(158,28,35,0.2);--color-alert-success-text: #24292e;--color-alert-success-icon: rgba(23,111,44,0.8);--color-alert-success-bg: #dcffe4;--color-alert-success-border: rgba(23,111,44,0.2);--color-autocomplete-shadow: 0 3px 6px rgba(149,157,165,0.15);--color-autocomplete-row-border: #eaecef;--color-blankslate-icon: #a3aab1;--color-btn-text: #24292e;--color-btn-bg: #fafbfc;--color-btn-border: rgba(27,31,35,0.15);--color-btn-shadow: 0 1px 0 rgba(27,31,35,0.04);--color-btn-inset-shadow: inset 0 1px 0 hsla(0,0%,100%,0.25);--color-btn-hover-bg: #f3f4f6;--color-btn-hover-border: rgba(27,31,35,0.15);--color-btn-selected-bg: #edeff2;--color-btn-focus-bg: #fafbfc;--color-btn-focus-border: rgba(27,31,35,0.15);--color-btn-focus-shadow: 0 0 0 3px rgba(3,102,214,0.3);--color-btn-shadow-active: inset 0 0.15em 0.3em rgba(27,31,35,0.15);--color-btn-shadow-input-focus: 0 0 0 0.2em rgba(3,102,214,0.3);--color-btn-primary-text: #fff;--color-btn-primary-bg: #2ea44f;--color-btn-primary-border: rgba(27,31,35,0.15);--color-btn-primary-shadow: 0 1px 0 rgba(27,31,35,0.1);--color-btn-primary-inset-shadow: inset 0 1px 0 hsla(0,0%,100%,0.03);--color-btn-primary-hover-bg: #2c974b;--color-btn-primary-hover-border: rgba(27,31,35,0.15);--color-btn-primary-selected-bg: #2a8f47;--color-btn-primary-selected-shadow: inset 0 1px 0 rgba(20,70,32,0.2);--color-btn-primary-disabled-text: hsla(0,0%,100%,0.8);--color-btn-primary-disabled-bg: #94d3a2;--color-btn-primary-disabled-border: rgba(27,31,35,0.1);--color-btn-primary-focus-bg: #2ea44f;--color-btn-primary-focus-border: rgba(27,31,35,0.15);--color-btn-primary-focus-shadow: 0 0 0 3px rgba(46,164,79,0.4);--color-btn-primary-icon: hsla(0,0%,100%,0.8);--color-btn-primary-counter-bg: hsla(0,0%,100%,0.2);--color-btn-outline-text: #0366d6;--color-btn-outline-hover-text: #fff;--color-btn-outline-hover-bg: #0366d6;--color-btn-outline-hover-border: rgba(27,31,35,0.15);--color-btn-outline-hover-shadow: 0 1px 0 rgba(27,31,35,0.1);--color-btn-outline-hover-inset-shadow: inset 0 1px 0 hsla(0,0%,100%,0.03);--color-btn-outline-hover-counter-bg: hsla(0,0%,100%,0.2);--color-btn-outline-selected-text: #fff;--color-btn-outline-selected-bg: #035fc7;--color-btn-outline-selected-border: rgba(27,31,35,0.15);--color-btn-outline-selected-shadow: inset 0 1px 0 rgba(5,38,76,0.2);--color-btn-outline-disabled-text: rgba(3,102,214,0.5);--color-btn-outline-disabled-bg: #fafbfc;--color-btn-outline-disabled-counter-bg: rgba(3,102,214,0.05);--color-btn-outline-focus-border: rgba(27,31,35,0.15);--color-btn-outline-focus-shadow: 0 0 0 3px rgba(0,92,197,0.4);--color-btn-outline-counter-bg: rgba(3,102,214,0.1);--color-btn-danger-text: #d73a49;--color-btn-danger-hover-text: #fff;--color-btn-danger-hover-bg: #cb2431;--color-btn-danger-hover-border: rgba(27,31,35,0.15);--color-btn-danger-hover-shadow: 0 1px 0 rgba(27,31,35,0.1);--color-btn-danger-hover-inset-shadow: inset 0 1px 0 hsla(0,0%,100%,0.03);--color-btn-danger-hover-counter-bg: hsla(0,0%,100%,0.2);--color-btn-danger-selected-text: #fff;--color-btn-danger-selected-bg: #d42d3d;--color-btn-danger-selected-border: rgba(27,31,35,0.15);--color-btn-danger-selected-shadow: inset 0 1px 0 rgba(134,24,29,0.2);--color-btn-danger-disabled-text: rgba(215,58,73,0.5);--color-btn-danger-disabled-bg: #fafbfc;--color-btn-danger-disabled-counter-bg: rgba(215,58,73,0.05);--color-btn-danger-focus-border: rgba(27,31,35,0.15);--color-btn-danger-focus-shadow: 0 0 0 3px rgba(203,36,49,0.4);--color-btn-danger-counter-bg: rgba(215,58,73,0.1);--color-btn-counter-bg: rgba(27,31,35,0.08);--color-counter-text: #24292e;--color-counter-bg: rgba(209,213,218,0.5);--color-counter-primary-text: #fff;--color-counter-primary-bg: #6a737d;--color-counter-secondary-text: #6a737d;--color-dropdown-shadow: 0 8px 24px rgba(149,157,165,0.2);--color-label-border: #e1e4e8;--color-label-primary-text: #24292e;--color-label-primary-border: #6a737d;--color-label-secondary-text: #586069;--color-label-secondary-border: #e1e4e8;--color-label-info-text: #0366d6;--color-label-info-border: #0366d6;--color-label-success-text: #22863a;--color-label-success-border: #28a745;--color-label-warning-text: #735c0f;--color-label-warning-border: #b08800;--color-label-danger-text: #d73a49;--color-label-danger-border: #cb2431;--color-label-orange-text: #c24e00;--color-label-orange-border: #f66a0a;--color-input-bg: #fff;--color-input-contrast-bg: #fafbfc;--color-input-border: #e1e4e8;--color-input-shadow: inset 0 1px 2px rgba(27,31,35,0.075);--color-input-disabled-bg: #fff;--color-input-disabled-border: #e1e4e8;--color-input-warning-border: #f9c513;--color-input-error-border: #cb2431;--color-input-tooltip-success-text: #144620;--color-input-tooltip-success-bg: #dcffe4;--color-input-tooltip-success-border: #34d058;--color-input-tooltip-warning-text: #735c0f;--color-input-tooltip-warning-bg: #fff5b1;--color-input-tooltip-warning-border: #f9c513;--color-input-tooltip-error-text: #86181d;--color-input-tooltip-error-bg: #ffeef0;--color-input-tooltip-error-border: #f97583;--color-avatar-bg: #fff;--color-avatar-border: transparent;--color-avatar-stack-fade: #d1d5da;--color-avatar-stack-fade-more: #e1e4e8;--color-avatar-child-shadow: -2px -2px 0 hsla(0,0%,100%,0.8);--color-toast-text: #24292e;--color-toast-bg: #fff;--color-toast-border: #e1e4e8;--color-toast-shadow: 0 8px 24px rgba(149,157,165,0.2);--color-toast-icon: #fff;--color-toast-icon-bg: #0366d6;--color-toast-icon-border: transparent;--color-toast-success-text: #24292e;--color-toast-success-border: #e1e4e8;--color-toast-success-icon: #fff;--color-toast-success-icon-bg: #28a745;--color-toast-success-icon-border: transparent;--color-toast-warning-text: #24292e;--color-toast-warning-border: #e1e4e8;--color-toast-warning-icon: #24292e;--color-toast-warning-icon-bg: #ffd33d;--color-toast-warning-icon-border: transparent;--color-toast-danger-text: #24292e;--color-toast-danger-border: #e1e4e8;--color-toast-danger-icon: #fff;--color-toast-danger-icon-bg: #d73a49;--color-toast-danger-icon-border: transparent;--color-toast-loading-text: #24292e;--color-toast-loading-border: #e1e4e8;--color-toast-loading-icon: #fff;--color-toast-loading-icon-bg: #586069;--color-toast-loading-icon-border: transparent;--color-timeline-text: #444d56;--color-timeline-badge-bg: #e1e4e8;--color-timeline-target-badge-border: #2188ff;--color-timeline-target-badge-shadow: #c8e1ff;--color-select-menu-border-secondary: #eaecef;--color-select-menu-shadow: 0 0 18px rgba(27,31,35,0.4);--color-select-menu-backdrop-bg: rgba(27,31,35,0.5);--color-select-menu-backdrop-border: transparent;--color-select-menu-tap-highlight: rgba(209,213,218,0.5);--color-select-menu-tap-focus-bg: #dbedff;--color-box-blue-border: #c8e1ff;--color-box-row-yellow-bg: #fffbdd;--color-box-row-blue-bg: #f1f8ff;--color-box-header-blue-bg: #f1f8ff;--color-box-header-blue-border: #c8e1ff;--color-box-border-info: rgba(3,102,214,0.2);--color-box-bg-info: #f1f8ff;--color-box-border-warning: rgba(255,211,61,0.4);--color-box-bg-warning: #fffdef;--color-branch-name-text: rgba(27,31,35,0.6);--color-branch-name-icon: #a8bbd0;--color-branch-name-bg: #eaf5ff;--color-branch-name-link-text: #0366d6;--color-branch-name-link-icon: #a8bbd0;--color-branch-name-link-bg: #eaf5ff;--color-markdown-code-bg: rgba(27,31,35,0.05);--color-markdown-frame-border: #dfe2e5;--color-markdown-blockquote-border: #dfe2e5;--color-markdown-table-border: #dfe2e5;--color-markdown-table-tr-border: #c6cbd1;--color-menu-heading-text: #24292e;--color-menu-border-active: #f9826c;--color-menu-bg-active: transparent;--color-sidenav-selected-bg: #fff;--color-sidenav-border-active: #f9826c;--color-header-text: hsla(0,0%,100%,0.7);--color-header-bg: #24292e;--color-header-logo: #fff;--color-filter-item-bar-bg: #eff3f6;--color-hidden-text-expander-bg: #dfe2e5;--color-hidden-text-expander-bg-hover: #c6cbd1;--color-drag-and-drop-border: #c3c8cf;--color-upload-enabled-border: #dfe2e5;--color-upload-enabled-border-focused: #4a9eff;--color-previewable-comment-form-border: #c3c8cf;--color-underlinenav-border: rgba(209,213,218,0);--color-underlinenav-border-hover: #d1d5da;--color-underlinenav-border-active: #f9826c;--color-underlinenav-text: #24292e;--color-underlinenav-text-hover: #24292e;--color-underlinenav-text-active: #24292e;--color-underlinenav-icon: #959da5;--color-underlinenav-icon-hover: #959da5;--color-underlinenav-icon-active: #24292e;--color-underlinenav-counter-text: #24292e;--color-verified-badge-text: #22863a;--color-verified-badge-bg: #fff;--color-verified-badge-border: #e1e4e8;--color-social-count-bg: #fff;--color-tooltip-text: #fff;--color-tooltip-bg: #24292e;--color-header-search-bg: #24292e;--color-header-search-border: #444d56;--color-search-keyword-hl: #fffbdd;--color-diffstat-neutral-bg: #d1d5da;--color-diffstat-neutral-border: #d1d5da;--color-diffstat-deletion-bg: #d73a49;--color-diffstat-deletion-border: #d73a49;--color-diffstat-addition-bg: #28a745;--color-diffstat-addition-border: #28a745;--color-files-explorer-icon: #79b8ff;--color-hl-author-bg: #f1f8ff;--color-hl-author-border: #c8e1ff;--color-logo-subdued: #d1d5da;--color-discussion-border: #a2cbac;--color-discussion-bg-success: #28a745;--color-actions-workflow-table-sticky-bg: hsla(0,0%,100%,0.95);--color-repo-language-color-border: rgba(27,31,35,0.1);--color-code-selection-bg: #c8e1ff;--color-blob-line-highlight-bg: #fffbdd;--color-blob-line-highlight-border: transparent;--color-diff-addition-text: #22863a;--color-diff-addition-bg: #e6ffed;--color-diff-addition-border: #34d058;--color-diff-deletion-text: #cb2431;--color-diff-deletion-bg: #ffeef0;--color-diff-deletion-border: #d73a49;--color-diff-change-text: #b08800;--color-diff-change-bg: #fff5b1;--color-diff-change-border: #f9c513;--color-diff-blob-num-text: rgba(27,31,35,0.3);--color-diff-blob-num-hover-text: rgba(27,31,35,0.6);--color-diff-blob-addition-num-text: rgba(27,31,35,0.3);--color-diff-blob-addition-num-hover-text: rgba(27,31,35,0.6);--color-diff-blob-addition-num-bg: #cdffd8;--color-diff-blob-addition-line-bg: #e6ffed;--color-diff-blob-addition-word-bg: #acf2bd;--color-diff-blob-deletion-num-text: rgba(27,31,35,0.3);--color-diff-blob-deletion-num-hover-text: rgba(27,31,35,0.6);--color-diff-blob-deletion-num-bg: #ffdce0;--color-diff-blob-deletion-line-bg: #ffeef0;--color-diff-blob-deletion-word-bg: #fdb8c0;--color-diff-blob-hunk-text: rgba(27,31,35,0.7);--color-diff-blob-hunk-num-bg: #dbedff;--color-diff-blob-hunk-line-bg: #f1f8ff;--color-diff-blob-empty-block-bg: #fafbfc;--color-diff-blob-selected-line-highlight-bg: rgba(255,223,93,0.2);--color-diff-blob-selected-line-highlight-border: #ffd33d;--color-diff-blob-selected-line-highlight-mix-blend-mode: multiply;--color-diff-blob-expander-icon: #586069;--color-diff-blob-expander-hover-icon: #fff;--color-diff-blob-expander-hover-bg: #0366d6;--color-diff-blob-comment-button-icon: #fff;--color-diff-blob-comment-button-bg: #0366d6;--color-diff-blob-comment-button-gradient-bg: #0372ef;--color-global-nav-logo: #fff;--color-global-nav-bg: #24292e;--color-global-nav-text: #fff;--color-global-nav-icon: #fff;--color-global-nav-input-bg: #fafbfc;--color-global-nav-input-border: #fafbfc;--color-global-nav-input-icon: #d1d5da;--color-global-nav-input-placeholder: #959da5;--color-calendar-graph-day-bg: #ebedf0;--color-calendar-graph-day-border: rgba(27,31,35,0.06);--color-calendar-graph-day-L1-bg: #9be9a8;--color-calendar-graph-day-L2-bg: #40c463;--color-calendar-graph-day-L3-bg: #30a14e;--color-calendar-graph-day-L4-bg: #216e39;--color-calendar-graph-day-L4-border: rgba(27,31,35,0.06);--color-calendar-graph-day-L3-border: rgba(27,31,35,0.06);--color-calendar-graph-day-L2-border: rgba(27,31,35,0.06);--color-calendar-graph-day-L1-border: rgba(27,31,35,0.06);--color-footer-invertocat-octicon: #d1d5da;--color-footer-invertocat-octicon-hover: #6a737d;--color-pr-state-draft-text: #fff;--color-pr-state-draft-bg: #6a737d;--color-pr-state-draft-border: transparent;--color-pr-state-open-text: #fff;--color-pr-state-open-bg: #28a745;--color-pr-state-open-border: transparent;--color-pr-state-merged-text: #fff;--color-pr-state-merged-bg: #6f42c1;--color-pr-state-merged-border: transparent;--color-pr-state-closed-text: #fff;--color-pr-state-closed-bg: #d73a49;--color-pr-state-closed-border: transparent;--color-topic-tag-text: #0366d6;--color-topic-tag-bg: #f1f8ff;--color-topic-tag-hover-bg: #def;--color-topic-tag-active-bg: #e7f3ff;--color-merge-box-success-icon-bg: #28a745;--color-merge-box-success-icon-text: #fff;--color-merge-box-success-icon-border: transparent;--color-merge-box-success-indicator-bg: #28a745;--color-merge-box-success-indicator-border: transparent;--color-merge-box-merged-icon-bg: #6f42c1;--color-merge-box-merged-icon-text: #fff;--color-merge-box-merged-icon-border: transparent;--color-merge-box-merged-box-border: #6f42c1;--color-merge-box-neutral-icon-bg: #6a737d;--color-merge-box-neutral-icon-text: #fff;--color-merge-box-neutral-icon-border: transparent;--color-merge-box-neutral-indicator-bg: #6a737d;--color-merge-box-neutral-indicator-border: transparent;--color-merge-box-warning-icon-bg: #dbab09;--color-merge-box-warning-icon-text: #fff;--color-merge-box-warning-icon-border: transparent;--color-merge-box-warning-box-border: #ffd33d;--color-merge-box-warning-merge-highlight: transparent;--color-merge-box-error-icon-bg: #d73a49;--color-merge-box-error-icon-text: #fff;--color-merge-box-error-icon-border: transparent;--color-merge-box-error-indicator-bg: #d73a49;--color-merge-box-error-indicator-border: transparent;--color-project-card-bg: #fff;--color-project-header-bg: #24292e;--color-project-sidebar-bg: #fff;--color-project-gradient-in: #fff;--color-project-gradient-out: hsla(0,0%,100%,0);--color-marketing-icon-primary: #2188ff;--color-marketing-icon-secondary: #79b8ff;--color-prettylights-syntax-comment: #6a737d;--color-prettylights-syntax-constant: #005cc5;--color-prettylights-syntax-entity: #6f42c1;--color-prettylights-syntax-storage-modifier-import: #24292e;--color-prettylights-syntax-entity-tag: #22863a;--color-prettylights-syntax-keyword: #d73a49;--color-prettylights-syntax-string: #032f62;--color-prettylights-syntax-variable: #e36209;--color-prettylights-syntax-brackethighlighter-unmatched: #b31d28;--color-prettylights-syntax-invalid-illegal-text: #fafbfc;--color-prettylights-syntax-invalid-illegal-bg: #b31d28;--color-prettylights-syntax-carriage-return-text: #fafbfc;--color-prettylights-syntax-carriage-return-bg: #d73a49;--color-prettylights-syntax-string-regexp: #22863a;--color-prettylights-syntax-markup-list: #735c0f;--color-prettylights-syntax-markup-heading: #005cc5;--color-prettylights-syntax-markup-italic: #24292e;--color-prettylights-syntax-markup-bold: #24292e;--color-prettylights-syntax-markup-deleted-text: #b31d28;--color-prettylights-syntax-markup-deleted-bg: #ffeef0;--color-prettylights-syntax-markup-inserted-text: #22863a;--color-prettylights-syntax-markup-inserted-bg: #f0fff4;--color-prettylights-syntax-markup-changed-text: #e36209;--color-prettylights-syntax-markup-changed-bg: #ffebda;--color-prettylights-syntax-markup-ignored-text: #f6f8fa;--color-prettylights-syntax-markup-ignored-bg: #005cc5;--color-prettylights-syntax-meta-diff-range: #6f42c1;--color-prettylights-syntax-brackethighlighter-angle: #586069;--color-prettylights-syntax-sublimelinter-gutter-mark: #959da5;--color-prettylights-syntax-constant-other-reference-link: #032f62;--color-codemirror-text: #24292e;--color-codemirror-bg: #fff;--color-codemirror-gutters-bg: #fff;--color-codemirror-guttermarker-text: #fff;--color-codemirror-guttermarker-subtle-text: #d1d5da;--color-codemirror-linenumber-text: #959da5;--color-codemirror-cursor: #24292e;--color-codemirror-selection-bg: #c8e1ff;--color-codemirror-activeline-bg: #fafbfc;--color-codemirror-matchingbracket-text: #24292e;--color-codemirror-lines-bg: #fff;--color-codemirror-syntax-comment: #6a737d;--color-codemirror-syntax-constant: #005cc5;--color-codemirror-syntax-entity: #6f42c1;--color-codemirror-syntax-keyword: #d73a49;--color-codemirror-syntax-storage: #d73a49;--color-codemirror-syntax-string: #032f62;--color-codemirror-syntax-support: #005cc5;--color-codemirror-syntax-variable: #e36209;--color-ansi-black: #24292e;--color-ansi-black-bright: #2f363d;--color-ansi-white: #e1e4e8;--color-ansi-white-bright: #e1e4e8;--color-ansi-gray: #959da5;--color-ansi-red: #f97583;--color-ansi-red-bright: #fdaeb7;--color-ansi-green: #85e89d;--color-ansi-green-bright: #bef5cb;--color-ansi-yellow: #ffea7f;--color-ansi-yellow-bright: #fff5b1;--color-ansi-blue: #79b8ff;--color-ansi-blue-bright: #c8e1ff;--color-ansi-magenta: #b392f0;--color-ansi-magenta-bright: #d1bcf9;--color-ansi-cyan: #76e3ea;--color-ansi-cyan-bright: #b3f0ff;color-scheme:light}.markdown-body *{box-sizing:border-box}.markdown-body a:hover{text-decoration:underline}.markdown-body hr:after,.markdown-body hr:before,.markdown-body:after,.markdown-body:before{display:table;content:""}.markdown-body hr:after,.markdown-body:after{clear:both}.markdown-body table{border-spacing:0;border-collapse:collapse}.markdown-body td,.markdown-body th{padding:0}.markdown-body details summary{cursor:pointer}.markdown-body kbd{display:inline-block;padding:3px 5px;font:11px SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;line-height:10px;color:#444d56;vertical-align:middle;background-color:#fafbfc;border:1px solid #d1d5da;border-radius:6px;box-shadow:inset 0 -1px 0 #d1d5da}.markdown-body table th{font-weight:600}.markdown-body blockquote{margin:0}.markdown-body ol ol,.markdown-body ul ol{list-style-type:lower-roman}.markdown-body ol ol ol,.markdown-body ol ul ol,.markdown-body ul ol ol,.markdown-body ul ul ol{list-style-type:lower-alpha}.markdown-body dd{margin-left:0}.markdown-body code,.markdown-body pre{font-family:SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace}.markdown-body ol ol,.markdown-body ol ul,.markdown-body ul ol,.markdown-body ul ul{margin-top:0;margin-bottom:0}.markdown-body input::-webkit-inner-spin-button,.markdown-body input::-webkit-outer-spin-button{margin:0;-webkit-appearance:none;appearance:none}.markdown-body :checked+.radio-label{position:relative;z-index:1;border-color:#0366d6}.markdown-body .border{border:1px solid #e1e4e8 !important}.markdown-body .border-0{border:0!important}.markdown-body .border-bottom{border-bottom:1px solid #e1e4e8 !important}.markdown-body .bg-white{background-color:#fff !important}.markdown-body .bg-gray-light{background-color:#fafbfc !important}.markdown-body .text-gray-light{color:#6a737d !important}.markdown-body .px-3{padding-left:16px!important;padding-right:16px!important}.markdown-body .f6{font-size:12px!important}.markdown-body .lh-condensed{line-height:1.25!important}.markdown-body .text-bold{font-weight:600!important}.markdown-body .pl-c{color:var(--color-prettylights-syntax-comment)}.markdown-body .pl-c1,.markdown-body .pl-s .pl-v{color:var(--color-prettylights-syntax-constant)}.markdown-body .pl-e,.markdown-body .pl-en{color:var(--color-prettylights-syntax-entity)}.markdown-body .pl-s .pl-s1,.markdown-body .pl-smi{color:var(--color-prettylights-syntax-storage-modifier-import)}.markdown-body .pl-ent{color:var(--color-prettylights-syntax-entity-tag)}.markdown-body .pl-k{color:var(--color-prettylights-syntax-keyword)}.markdown-body .pl-pds,.markdown-body .pl-s,.markdown-body .pl-s .pl-pse .pl-s1,.markdown-body .pl-sr,.markdown-body .pl-sr .pl-sra,.markdown-body .pl-sr .pl-sre{color:var(--color-prettylights-syntax-string)}.markdown-body .pl-smw,.markdown-body .pl-v{color:var(--color-prettylights-syntax-variable)}.markdown-body .pl-bu{color:var(--color-prettylights-syntax-brackethighlighter-unmatched)}.markdown-body .pl-ii{color:var(--color-prettylights-syntax-invalid-illegal-text);background-color:var(--color-prettylights-syntax-invalid-illegal-bg)}.markdown-body .pl-c2{color:var(--color-prettylights-syntax-carriage-return-text);background-color:var(--color-prettylights-syntax-carriage-return-bg)}.markdown-body .pl-c2:before{content:"^M"}.markdown-body .pl-sr .pl-cce{font-weight:700;color:var(--color-prettylights-syntax-string-regexp)}.markdown-body .pl-ml{color:var(--color-prettylights-syntax-markup-list)}.markdown-body .pl-mh,.markdown-body .pl-mh .pl-en,.markdown-body .pl-ms{font-weight:700;color:var(--color-prettylights-syntax-markup-heading)}.markdown-body .pl-mi{font-style:italic;color:var(--color-prettylights-syntax-markup-italic)}.markdown-body .pl-mb{font-weight:700;color:var(--color-prettylights-syntax-markup-bold)}.markdown-body .pl-md{color:var(--color-prettylights-syntax-markup-deleted-text);background-color:var(--color-prettylights-syntax-markup-deleted-bg)}.markdown-body .pl-mi1{color:var(--color-prettylights-syntax-markup-inserted-text);background-color:var(--color-prettylights-syntax-markup-inserted-bg)}.markdown-body .pl-mc{color:var(--color-prettylights-syntax-markup-changed-text);background-color:var(--color-prettylights-syntax-markup-changed-bg)}.markdown-body .pl-mi2{color:var(--color-prettylights-syntax-markup-ignored-text);background-color:var(--color-prettylights-syntax-markup-ignored-bg)}.markdown-body .pl-mdr{font-weight:700;color:var(--color-prettylights-syntax-meta-diff-range)}.markdown-body .pl-ba{color:var(--color-prettylights-syntax-brackethighlighter-angle)}.markdown-body .pl-sg{color:var(--color-prettylights-syntax-sublimelinter-gutter-mark)}.markdown-body .pl-corl{text-decoration:underline;color:var(--color-prettylights-syntax-constant-other-reference-link)}.markdown-body .mb-0{margin-bottom:0!important}.markdown-body .my-2{margin-bottom:8px!important;margin-top:8px!important}.markdown-body .pl-0{padding-left:0!important}.markdown-body .py-0{padding-top:0!important;padding-bottom:0!important}.markdown-body .pl-1{padding-left:4px!important}.markdown-body .pl-2{padding-left:8px!important}.markdown-body .py-2{padding-top:8px!important;padding-bottom:8px!important}.markdown-body .pl-3{padding-left:16px!important}.markdown-body .pl-4{padding-left:24px!important}.markdown-body .pl-5{padding-left:32px!important}.markdown-body .pl-6{padding-left:40px!important}.markdown-body .pl-7{padding-left:48px!important}.markdown-body .pl-8{padding-left:64px!important}.markdown-body .pl-9{padding-left:80px!important}.markdown-body .pl-10{padding-left:96px!important}.markdown-body .pl-11{padding-left:112px!important}.markdown-body .pl-12{padding-left:128px!important}.markdown-body .pl-0-fluid{padding-left:0!important}.markdown-body .pl-1-fluid{padding-left:.25rem!important}.markdown-body .pl-2-fluid{padding-left:.5rem!important}.markdown-body .pl-3-fluid{padding-left:1rem!important}.markdown-body .pl-4-fluid{padding-left:1.5rem!important}.markdown-body .pl-5-fluid{padding-left:2rem!important}.markdown-body .pl-6-fluid{padding-left:2.5rem!important}.markdown-body .pl-7-fluid{padding-left:3rem!important}.markdown-body .pl-8-fluid{padding-left:4rem!important}.markdown-body .pl-9-fluid{padding-left:5rem!important}.markdown-body .pl-10-fluid{padding-left:6rem!important}.markdown-body .pl-11-fluid{padding-left:7rem!important}.markdown-body .pl-12-fluid{padding-left:8rem!important}.markdown-body .border-0{}.markdown-body [name=user-content-key-indicators] li::marker{color:#6ddb90}.markdown-body>:first-child{margin-top:0!important}.markdown-body>:last-child{margin-bottom:0!important}.markdown-body a:not([href]){color:inherit;text-decoration:none}.markdown-body blockquote,.markdown-body details,.markdown-body dl,.markdown-body ol,.markdown-body p,.markdown-body pre,.markdown-body table,.markdown-body ul{margin-top:0;margin-bottom:16px}.markdown-body blockquote{padding:0 1em;color:#6a737d;border-left:.25em solid var(--color-markdown-blockquote-border)}.markdown-body blockquote>:first-child{margin-top:0}.markdown-body blockquote>:last-child{margin-bottom:0}.markdown-body h1,.markdown-body h2,.markdown-body h3,.markdown-body h4,.markdown-body h5,.markdown-body h6{margin-top:24px;margin-bottom:16px;font-weight:600;line-height:1.25}.markdown-body h1,.markdown-body h2{font-size:2em;padding-bottom:.3em;border-bottom:1px solid #eaecef}.markdown-body h2{font-size:1.5em}.markdown-body h3{font-size:1.25em}.markdown-body h4{font-size:1em}.markdown-body h5{font-size:.875em}.markdown-body h6{font-size:.85em;color:#6a737d}.markdown-body ol,.markdown-body ul{padding-left:2em}.markdown-body li{word-wrap:break-all}.markdown-body li>p{margin-top:16px}.markdown-body li+li{margin-top:.25em}.markdown-body dl{padding:0}.markdown-body dl dt{padding:0;margin-top:16px;font-size:1em;font-style:italic;font-weight:600}.markdown-body dl dd{padding:0 16px;margin-bottom:16px}.markdown-body table{display:block;width:-webkit-max-content;width:-moz-max-content;width:max-content;max-width:100%;overflow:auto}.markdown-body table td,.markdown-body table th{padding:6px 13px;border:1px solid #dfe2e5}.markdown-body table tr{background-color:#fff);border-top:1px solid #c6cbd1}.markdown-body table tr:nth-child(2n){background-color:#f6f8fa}.markdown-body img[align=right]{padding-left:20px}.markdown-body img[align=left]{padding-right:20px}.markdown-body code{padding:.2em .4em;margin:0;font-size:85%;background-color:rgba(27,31,35,0.05);border-radius:6px}.markdown-body pre{word-wrap:normal}.markdown-body pre>code{padding:0;margin:0;font-size:100%;word-break:normal;white-space:pre;background:0 0;border:0}.markdown-body .highlight{margin-bottom:16px}.markdown-body .highlight pre{margin-bottom:0;word-break:normal}.markdown-body .highlight pre,.markdown-body pre{padding:16px;overflow:auto;font-size:85%;line-height:1.45;background-color:#f6f8fa;border-radius:6px}.markdown-body pre code{display:inline;max-width:auto;padding:0;margin:0;overflow:visible;line-height:inherit;word-wrap:normal;background-color:initial;border:0}.markdown-body .commit-tease-sha{display:inline-block;font-family:SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;font-size:90%;color:#444d56}.markdown-body .blob-wrapper{overflow-x:auto;overflow-y:hidden}.markdown-body .blob-wrapper-embedded{max-height:240px;overflow-y:auto}.markdown-body .blob-code,.markdown-body .blob-num{padding-right:10px;padding-left:10px;line-height:20px;vertical-align:top}.markdown-body .blob-num{width:1%;min-width:50px;font-family:SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;font-size:12px;color:var(--color-diff-blob-num-text);text-align:right;white-space:nowrap;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.markdown-body .blob-num:hover{color:var(--color-diff-blob-num-hover-text)}.markdown-body .blob-num:before{content:attr(data-line-number)}.markdown-body .blob-code{position:relative}.markdown-body .blob-code-inner{overflow:visible;font-family:SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;font-size:12px;color:#24292e;word-wrap:normal;white-space:pre}.markdown-body .blob-code-inner::selection,.markdown-body .blob-code-inner>::selection{background-color:#c8e1ff}.markdown-body .pl-token.active,.markdown-body .pl-token:hover{cursor:pointer;background:#ffea7f}.markdown-body .emoji-picker-tab .btn-outline:not(:hover){background-color:initial}.markdown-body .tab-size[data-tab-size="1"]{-moz-tab-size:1;tab-size:1}.markdown-body .tab-size[data-tab-size="2"]{-moz-tab-size:2;tab-size:2}.markdown-body .tab-size[data-tab-size="3"]{-moz-tab-size:3;tab-size:3}.markdown-body .tab-size[data-tab-size="4"]{-moz-tab-size:4;tab-size:4}.markdown-body .tab-size[data-tab-size="5"]{-moz-tab-size:5;tab-size:5}.markdown-body .tab-size[data-tab-size="6"]{-moz-tab-size:6;tab-size:6}.markdown-body .tab-size[data-tab-size="7"]{-moz-tab-size:7;tab-size:7}.markdown-body .tab-size[data-tab-size="8"]{-moz-tab-size:8;tab-size:8}.markdown-body .tab-size[data-tab-size="9"]{-moz-tab-size:9;tab-size:9}.markdown-body .tab-size[data-tab-size="10"]{-moz-tab-size:10;tab-size:10}.markdown-body .tab-size[data-tab-size="11"]{-moz-tab-size:11;tab-size:11}.markdown-body .tab-size[data-tab-size="12"]{-moz-tab-size:12;tab-size:12}.markdown-body .task-list-item{list-style-type:none}.markdown-body .task-list-item+.task-list-item{margin-top:3px}.markdown-body .task-list-item input{margin:0 .2em .25em -1.6em;vertical-align:middle}.markdown-body .AvatarStack-body:not(:hover){background-color:initial}:root{--color-calendar-halloween-graph-day-L1-bg: #ffee4a;--color-calendar-halloween-graph-day-L2-bg: #ffc501;--color-calendar-halloween-graph-day-L3-bg: #fe9600;--color-calendar-halloween-graph-day-L4-bg: #03001c;--color-workflow-card-connector: var(--color-scale-gray-3);--color-workflow-card-connector-bg: var(--color-scale-gray-3);--color-workflow-card-connector-inactive: #e1e4e8;--color-workflow-card-connector-inactive-bg: #e1e4e8;--color-workflow-card-connector-highlight: var(--color-scale-blue-4);--color-workflow-card-connector-highlight-bg: var(--color-scale-blue-4);--color-workflow-card-bg: var(--color-scale-white);--color-workflow-card-inactive-bg: var(--color-bg-canvas-inset);--color-workflow-card-header-shadow: transparent;--color-workflow-card-progress-complete-bg: var(--color-scale-blue-4);--color-workflow-card-progress-incomplete-bg: var(--color-scale-gray-2);--color-checks-donut-error: var(--color-scale-red-6);--color-checks-donut-pending: var(--color-scale-yellow-7);--color-checks-donut-success: var(--color-scale-green-5);--color-checks-donut-neutral: var(--color-scale-gray-4);--color-discussions-answer-border: var(--color-scale-green-5);--color-discussions-answer-icon: var(--color-scale-green-6);--color-discussions-answer-text: var(--color-scale-green-6);--color-discussions-state-answered-icon: var(--color-scale-white);--color-bg-discussions-row-emoji-box: rgba(209,213,218,0.5);--color-upvote-icon-bg: var(--color-scale-blue-1);--color-downvote-icon-bg: var(--color-scale-red-1);--color-search-hover-hl: var(--color-scale-white);--color-notifications-button-text: var(--color-text-secondary);--color-notifications-button-hover-text: #24292e;--color-notifications-button-hover-bg: var(--color-auto-gray-2);--color-notifications-row-read-bg: var(--color-bg-tertiary);--color-notifications-row-bg: var(--color-auto-white);--color-timeline-merged-bg: var(--color-auto-purple-5);--color-current-user-tip-bg: var(--color-box-bg-info);--color-current-user-tip-border: #d4e2f8;--color-promo-color-modes-toggle-track-border: var(--color-scale-gray-3);--color-promo-color-modes-toggle-track-bg: var(--color-scale-white);--color-promo-color-modes-toggle-thumb-bg: var(--color-scale-gray-8);--color-promo-color-modes-toggle-moon: var(--color-scale-yellow-4);--color-profile-color-modes-toggle-track-border: var(--color-scale-gray-3);--color-profile-color-modes-toggle-track-bg: var(--color-scale-white);--color-profile-color-modes-toggle-thumb-bg: var(--color-scale-gray-8);--color-profile-color-modes-toggle-moon: var(--color-scale-yellow-4)}.markdown-body :checked+.hx_theme-toggle{border-color:var(--color-state-hover-primary-border)}.markdown-body ::-webkit-calendar-picker-indicator{filter:invert(50%)}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover) .avatar:nth-of-type(n+6){display:none;opacity:0}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more+.avatar:nth-of-type(3) img{opacity:.5}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(4) img{opacity:.33}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(5) img{opacity:.25}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more+.avatar:nth-of-type(3){margin-right:0;margin-left:-6px}.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(4),.markdown-body .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(5){margin-right:0;margin-left:-18px}.markdown-body .AvatarStack--three-plus.AvatarStack--right .AvatarStack-body:not(:hover)>.avatar-more+.avatar:nth-of-type(3){margin-right:-6px;margin-left:0}.markdown-body .AvatarStack--three-plus.AvatarStack--right .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(4),.markdown-body .AvatarStack--three-plus.AvatarStack--right .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(5){margin-right:-18px;margin-left:0}.markdown-body .AvatarStack--three-plus.AvatarStack--large .AvatarStack-body:not(:hover)>.avatar-more+.avatar:nth-of-type(3){margin-right:0;margin-left:-2px}.markdown-body .AvatarStack--three-plus.AvatarStack--large .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(4),.markdown-body .AvatarStack--three-plus.AvatarStack--large .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(5){margin-right:0;margin-left:-30px}.markdown-body .hx_avatar_stack_commit .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more+.avatar:nth-of-type(3){margin-right:0;margin-left:-10px}.markdown-body .hx_avatar_stack_commit .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(4),.markdown-body .hx_avatar_stack_commit .AvatarStack--three-plus .AvatarStack-body:not(:hover)>.avatar-more~.avatar:nth-of-type(5){margin-right:0;margin-left:-21px}.markdown-body .rounded-1{border-radius:6px!important}
</head>
<body style="display:flex;max-width:100% !important"><div id="_html" class="markdown-body">
<h1 id="Спецификация требований к програмному обеспечению BIWOL">Частичная демонстрация спецификации требований к програмному обеспечению BIWOL<sup><span style="font-size:15px;">TM</span></sup> website</h1>
<h3 id="Выполнил: Буров А.Е."> Выполнил: Буров А.Е</h3>


<h2 id="1-общие-сведения">1. Общие сведения</h2>

<h3 id="1.1. Назначение документа">1.1. Назначение документа</h3>
<p>
Целью этого документа является описание требований к веб-сайту интерактивных онлайн-курсов. Этот документ сопровождает код и устанавливает, что веб-сайт должен делать и каковы приемлемые характеристики еге реализации. Документ подробно описывает, как должен себя вести код. Спецификация понятным и недвусмысленным образом охватывает все области поведения системы. Этот документ никогда не является окончательным и исчерпывающим. При разработке этого документа следует придерживаться основополагающих принципов Agile-разработки. Он дорабатывается непрерывно на протяжении всего последующего жизненного цикла проекта и фиксирует достигнутые договоренности вовлеченных сторон на момент сохранения документа в репозитории кода.
</p>
<h3 id = "Предполагаемая аудитория и предполагаемое использование документа">1.2. Предполагаемая аудитория и предполагаемое использование документа</h3>
<p>
Этот документ полезен для группы разработки веб-сайта (включая разработчиков, тестировщиков и менеджеров проектов), заинтересованных сторон в других отделах, включая отдел контроля качества, группы руководителей, отдел продаж и маркетинга.
</p>
<h3 id = "Прикладная область и назначение системы">1.3. Прикладная область и назначение системы</h3>
<ul>
<li>Сисиема должна представлять из себя комплекс олайн-курсов, которые составляют автоматизированную систему (далее - Программа) и предоставляют сервис интерактивных онлайн-курсов с упражнениями и заданиями для начинающих.</li>  
<li>Клиентская часть программы должна быть реализована в качестве веб-сайта. Сайт, включая страницы, сообщения на Email, всплывающие окна должны быть выполнены в общем стиле и эргономичны.</li>   
<li>Сервис должен позволять пользователям получать базовые знания и навыки для написания и/или эксплуатации компьютерных программ в режиме интерактивного самообучения.</li>
</ul>
<p>У программы должны быть несколько ролей:</p>
<ol
style = background-color:#DCDCDC;>
<li>Модератор</li>
<li>Обычный пользователь</li> 
<li>Премиум пользователь</li> 
<li>Поисковой робот</li> 
</ol> 
<ul>
<li>Для сохранения прогресса обучения и получания премиум статуса каждому пользователю  требуется учетная запись зарегистрированная в программе.
</li> 
<li>Программа должна обеспечивать хранение пользовательских данных. Прграмма не предназначена для сбора, хранения и предачи конфиденциальных данных.
</li>
</ul>
<table>
     <th style="text-align:left;min-width:300px;width:25%"> <a id = "1.3.-use case"href="#">1.3.-use case</a>
     </th>       
</table> 
<img  src="image-2.png" align="middle" width="300" height="500"  alt="Макет окна смены пароля" /> </p></td> 

<h3 id = "1.4. Определения и сокращения"> 1.4. Определения и сокращения</h3>
<ul>
<li>Прграмма - Система компании BIWOL<sup><span style="font-size:8px;">TM</span></sup></li>
<li>SQL - Structured Query Language — «язык структурированных запросов»</li>
<li>SRS - software requirements specification (структурированный набор требований)</li>
</ul>
<h2 id = "1.5. Ссылки">1.5. Ссылки</h2>
<ul>
<li><p><a href= "https://biwol.ru" title = "Главный сайт компании BIWOL">biwol.ru</a> - главный сайт компании BIWOL<sup><span style="font-size:8px;">TM</span></sup>;</p></li> 
<li><p><a href = "http://agilemanifesto.org/iso/ru/manifesto.html" title = "Manifesto for Agile Software Development">Манифест</a> - при разработке данного документа следует придерживаться основополагающих принципов Agile-разработки;</p></li>
<li><p><a href= "https://www.ietf.org/rfc/rfc2119.txt" title= "Ключевые слова для использования в RFC для указания уровней требований">RFC2119</a> - ключевые слова для использования в RFC для указания уровней требований" - интерпретируется как использование ключевых слов "ТРЕБУЕТСЯ", "ДОЛЖЕН", "НЕ ДОЛЖЕН", "СЛЕДУЕТ", "НЕ СЛЕДУЕТ", "РЕКОМЕНДУЕТСЯ", "МОЖЕТ" и "НЕОБЯЗАТЕЛЬНО" в этом документе (ключевые слова могут быть написаны строчными буквами в тексте документа);</p></li>
<li><p><a href= "https://autoit-script.ru/docs/appendix/ascii.htm" title="Коды ASCII символов">Коды ASCII символов</a> - этот список может помочь при выполнении требований к текстовым форматам;</p></li>
<li><p><a href= "https://datatracker.ietf.org/doc/html/rfc3629" title= "Стандарт UNF-8">RFC3629</a> -  cтандарт <u>UTF-8</u> может помочь при выполнении требований к текстовым форматам;</p></li>
</ul>
<h2 id = "2. Системные характеристики и требования" >2. Системные характеристики и требования</h2>
<h3 id = "3.1. Функциональные требования">3.1. Функциональные требования</h3>
<br></bt>
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-01" href="#">BIW-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Проверка полей ввода</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> 
  <p>Все поля ввода должны проходить проверку на корректность заполнения.</p>
  <p>В случаях не прохождения проверки, программа не должна повзолять выполнить действие. </p>
  <p>В случае ошибки ввода, программа должна уведомлять об ошибке в виде текстового сообщения.
  <p>В случае ошибки ввода, программа должна выделять красным цветом поле/поля в которых допущена ошибка.
   <p>Проверки всех полей должны производиться при нажатии на кнопки подтверждения (<b>создать аккаунт, войти, сохранить новый пароль, сохранить, восстановить и т.д.</b>).</p>
  <p>Возможные варианты ошибок ввода пароля:</p>
<ul
style= color:red>
  <li> Неверно указан текущий пароль;</li>
  <li> Неверный Email или пароль. Попробуйте еще раз;</li>
  <li> Поле не заполнено;</li>
  <li> Пароли не свопадают. Повторите попытку;</li>
  <li> Новый пароль совпадает с текущим;</li>
  <li> Новый пароль слишком длинный;</li>
  <li> Новый пароль слишком короткий;</li>
  <li> Слишком слабый пароль;</li>
  <li> Пароль не содержит буквы латинского алфавита;</li>
  <li> Пароль не содержит цифры;</li>
  <li> Неверно указан пароль. <u style= color:#0099ff>Забыли пароль?</u>;</li>
</ul>

<p>Возможные варианты ошибок ввода Email:</p>
<ul
style= color:red>
  <li> Пользователь не найден;</li>
  <li> Этот Email уже используется; </li>
  <li> Недопустимый формат Email;</li>
  <li> Слишком длинный Email;</li>
  <li> Поле не заполнено;</li>
  <li> Неверный Email или пароль. Попробуйте еще раз.</li>
</ul>
  </p></td>
  </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00ff00">Согласовано</b></td>
    </tr>
</table><br/><br/>

<h3 id = "3.1.1. Учетная запись (-AC)">3.1.1. Учетная запись (-AC)</h3>
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-01" href="#">BIW-AC-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Регистрация пользователя</th> 
  <tr>
  <td colspan="3"><p align="justify">

  <p>Программа должна позволять пользователю зарегистрироваться в системе используя свой e-mail.</p> <p>Система должна исключать возможность повторной регистрации пользователя на уже зарегистрированный e-mail в системе.</p>
  <p> E-mail выступает уникальным идентификатором учетной записи. Проверка формата e-mail должна проводиться в соответствии с требованиями:</p>
<ul>    
<li><b>E-mail</b>-адрес должен содержать знак «@» (собака) и доменное имя, разделенные знаком «.» (точка). Не должен содержать запрещенных символов, таких как пробелы, кавычки или специальные символы. Должен быть уникальным и зарегистрированным на сервере электронной почты;</li>
<li><b>Локальная часть</b> e-mail-адреса не должна превышать 64 символа. Может состоять из прописных и строчных латинских букв (A – Z, a – z), Цифры от 0 до 9, специальные символы: # - _ ~! $ & '() * +,; =: и %20, точка, точка не может быть первым или последним символом, а также не идет последовательно (например, Ivan..Ivanov@example.ru). Также может содержать доменные метки, разделенные точками;</li>
<li><b>Доменная часть</b> e-mail-адреса не должна превышать 253 символа. Должна состоять из имени домена (например, gmail) и доменного суффикса (например, .com). Имя домена может содержать только буквы латинского алфавита (в верхнем или нижнем регистре) и цифры. Доменный суффикс должен быть допустимым верхним уровнем домена (например, .com, .net или .org).</li>
</ul>
<p>Проверка формата пароля должна проводиться в соответствии с требованиями:</p>
<ul>
<li>Длинна не должна быть меньше 8 символов;</li>
<li>Должен содержать не менее одной цифры от 0 до 9;</li>
<li>Может состоять из любых символов юникода;</li>
</ul>
 </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00f000">Согласовано</b></td>
  </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-02" href="#">BIW-AC-02</a></th>
    <th colspan="2" style="width:100%;text-align:left">Окно регистрации и авторизации</th> 
  </tr>
  <tr>
  <td colspan="3"><p align="justify"> 

<u>Окно регистрации</u>
 <p>На главной странице должна существовать кнопка "Зарегистрироваться". При нажатии, программа должна вывести окно регистрации с полями (Макет <a href= "#BIW-AC-02-example-reg">BIW-AC-02-example-reg</a>).</p>
 <p> В окне регистрации пользователь должен иметь возможность выполнить действия:</p>
<ol>
<li>Вводить свой e-mail;</li>
<li>Задать пароль учетной записи;</li>
<li>Повторно вводить пароль. Повторно введенный пароль должен соответсвовать значению в первом поле пароля для исключения опечатки.</li>
<li>Ознакамливаться с пользовательским соглашением;</li>
<li>Нажимать кнопку "Создать аккаунт".</li>
</ol>
<p>Email и пароль должен пройти проверку согласно требованию <a href= "#BIW-01">BIW-01.</a></p>
<p>В окне регистрации должно существовать уведомление: <blockquote>нажав кнопку <b>СОЗДАТЬ АККАУНТ</b>, вы соглашаетесь с <u style= color:#0099ff>пользовательским соглашением</u></blockquote> 
<p>В окне должна существовать гипперссылка, ведущая на <u style= color:#0099ff>пользовательское соглашение.</u></p>
<p>При нажатии на кнопку "СОЗДАТЬ АККАУНТ", программа далжна пропускать пользователя дальше и уведомлять о необходимости врифицировать e-mail.</p>  
<p>Требование к верификации e-mail <a href="#BIW-AC-03">BIW-AC-03</a>.</p>

<u>Окно авторизации</u>
<p>Аторизоваться в программе может пользователь только с верифицированным e-mail.</p> 
<p>На главной странице должна существовать кнопка "Войти". При нажатии, программа должна вывести окно авторизации (Макет <a href= "#BIW-AC-02-example-aut">BIW-AC-02-example-aut</a>).</p>
<p>Окно авторизации  должно позволять ввести E-mail,пароль и нажимать кнопку "Войти".</p>
<p>После заполнения всех полей и нажатия кнопки <b>Войти</b>, программа должна аутентифицировать и авторизовать пользователя в системе.</p>
<p>Email и пароль должны пройти проверку согласно требованию <a href= "#BIW-01">BIW-01.</a></p> 
<p>В окне авторизации должно существовать уведомление:
 <blockquote>нажав кнопку <b>ВОЙТИ</b>, вы соглашаетесь с <u style= color:#0099ff>пользовательским соглашением</u></blockquote></p> 
 <p>В окне должна существовать гипперссылка, ведущая на отдельную страницу с <u style= color:#0099ff>пользовательским соглашением.</u></p> 
 <p>В окне авторизации должна существовать гиперссылка, ведущая на окно восстановления пароля (На макете <b style="color:#0099ff"><u> Забыли пароль?</b></u>)(Требование <a href="#BIW-AC-05">BIW-AC-05</a>).</p>
 <p>В окне авторизации должна существовать гиперссылка, ведущая на окно регистрации(На макете <em>Нет аккаунта?</em><b style="color:#0099ff"><u> Создать</b></u>)</p>
<p>Гипперссыки на мекатех указанны <b style="color:#0099ff"><u> голубым цветом с подчеркиванием</b></u></p>
<br></br>
<table>
     <th style="text-align:left;min-width:300px;width:25%"> <a id= "BIW-AC-02-example-reg" href="#">BIW-AC-02-example-reg</a>
     </th>  
     <th style="text-align:left;min-width:300px;width:25%"> 
     <a id="BIW-AC-02-example-aut" href="#">BIW-AC-02-example-aut</a>
     </th>   
</table>
  <img src="Макет окна регистрации 1.png" width="300" height="400"  alt="макет окна регистрации" />
  <img src="Макет окна авторизации1.png" width="300" height="400"  alt="Макет окна авторизации" />
  <tr>
    <td>2023-11-28</td>
    <td><b style="color:#00f000">Согласовано</b></td>
    
  </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-03" href="#">BIW-AC-03</a></th>
    <th colspan="2" style="width:100%;text-align:left">Верификация e-mail</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">  
    <p>После нажатия кнопки "Создать аккаунт" (Требование <a href="#BIW-AC-02">BIW-AC-02</a>) на указанный пользователем адрес электронной почты программа должна отправить письмо с временной ссылкой для верификации e-mail. Временная ссылка должна дейсвовать в течении 24 часов.</p> 
    
  <p>Ссылка в письме должна вести на страницу сайта с сообщением о подтверждении регистрации учетной записи.</p> 
  <p>В письме должно существовать уведомление:
  <blockquote>Ваша ссылка была создана YYYY-MM-DD hh:mm и действительна в течении 24 часов.</blockquote></p> 
  
  <p>Недейсвительная ссылка должна быть переадресованна на отдельную страницу с гипперссылкой на окно авторизации и текстом: <blockquote>Ваша ссылка устарела, <u style="color:#0099ff">повторите регистрацию</u></blockquote>
  </p>
  <p>После перехода на страницу сайта с сообщением о подтверждении регистрации учетной записи, email должен считаться верифицированным.</p>
    
  </tr>
  <tr>
    <td>2023-12-19</td>
    <td><b style="color:#00f000">Согласовано</b></td>
    
  </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-04" href="#">BIW-AC-04</a></th>
    <th colspan="2" style="width:100%;text-align:left">Смена пароля (Заменено на требование <a href="#BIW-AC-04.V2">BIW-AC-04.V2</a>)</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">

<p>Программа должна позволять пользователю сменить пароль в профиле.</p> 
<p>На странице профиля пользователя должна существовать гипрессылка, ведущая на окно смены пароля (Макет <a href="#BIW-AC-04-example">BIW-AC-04-example</a>) </p>
<p> Окно смены пароля должно позволять пользователю:</p>
<ol> 
<li>Ввести текущий пароль;</li>
<li>Ввести новый пароль;</li>
<li>Повторить ввод нового пароля. Должен совпадать со значением в поле нового пароля для исключения опечатки;</li>
<li>Сохранить новый пароль</li>
</ol>
<p>Программа не должна позволять изменить пароль в случаях :</p> 
<ul>
 <li>Неверного ввода текущего пароля;</li>
 <li>Если новый пароль не прошел проверку (Требование <a href= "#BIW-01">BIW-01</a>);</li>
 <li>Не соответсвия в поле повторного ввода пароля с полем ввода нового пароля.</li> 
 <li>Новый пароль совпадает с текущим</li>
</ul>
<p> Модератор должен иметь возможность сменить пароль любому пользователю.</p>
  
<img  src="Макет окна смены пароля 2.png" align="middle" width="350" height="300"  alt="Макет окна смены пароля" /> </p></td>
 

  </tr>
  <tr>
    <td>2023-11-27</td>
    <td><b style="color:#FFA000">Заменено</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-04.V2" href="#">BIW-AC-04.V2</a></th>
    <th colspan="2" style="width:100%;text-align:left">Смена пароля</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">

<p>Программа должна позволять пользователю сменить пароль в профиле.</p> 
<p>На странице профиля пользователя должна существовать гипрессылка, ведущая на окно смены пароля (Макет <a href="#BIW-AC-04-example">BIW-AC-04-example</a>) </p>
<p> Окно смены пароля должно позволять пользователю:</p>
<ol> 
<li>Ввести текущий пароль;</li>
<li>Ввести новый пароль;</li>
<li>Повторить ввод нового пароля. Должен совпадать со значением в поле нового пароля для исключения опечатки;</li>
<li>Сохранить новый пароль</li>
</ol>
<p>Программа не должна позволять изменить пароль в случаях :</p> 
<ul>
 <li>Неверного ввода текущего пароля;</li>
 <li>Если новый пароль не прошел проверку (Требование <a href= "#BIW-01">BIW-01</a>);</li>
 <li>Не соответсвия в поле повторного ввода пароля с полем ввода нового пароля.</li> 
 <li>Новый пароль совпадает с текущим</li>
</ul>
<p>После нажатия кнопки сохранить, новый пароль должен стать действующим.</p>
<p>Программа должна вывести страницу, на которой должно существовать уведомление об успешной замене пароля и гипперссылка, ведущая на главную страницу сайта:
<blockquote>Пароль успешно изменен. <u style= color:#0099ff>Вернуться на главную страницу</u></blockquote></p>


<p> Модератор должен иметь возможность сменить пароль любому пользователю.</p>

<table>
<th style="text-align:left;min-width:345px;width:25%"><a id="BIW-AC-04-sequence" href="#">BIW-AC-04-sequence</a>
</th>       
</table>

<img  src="Диаграмма последовательности смены пароля.png" align="middle" width="500" height="540" alt="Диаграмма последовательности смены пароля"/> </p>


<table>
     <th style="text-align:left;min-width:345px;width:25%"> <a id="BIW-AC-04-buisness_process" href="#">BIW-AC-04-Buisness_process</a>
     </th>       
</table>  

<img  src="Модель бизнес-процесса смены пароля1.png" align="middle" width="600" height="300"  alt="Модель бизнес-процесса смены пароля" /> </p>

<table>
  <th style="text-align:left;min-width:345px;width:25%"> <a id="BIW-AC-04-example" href="#">BIW-AC-04-example</a>
  </th>       
  </table> 
  
  <img  src="Макет окна смены пароля 2.png" align="middle" width="350" height="300"  alt="Макет окна смены пароля" /> </p></td>


  <tr>
    <td>2023-12-27</td>
    <td><b style="color:#00f000">Согласовано</b></td>
    </tr>
</table>
<br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-04-A" href="#">BIW-AC-04-A</a></th>
    <th colspan="2" style="width:100%;text-align:left"><s>Запрос на смену пароля</s></th> 
  </tr>
  <tr>
    <td colspan="3">На Ваш адрес электронной почты user@email.** <p align="justify"> 

  <p>При нажатии кнопки "сменить пароль", на указанный пользователем верифицированный email программа отправляет письмо. 
  <p>Письмо должно содержать уведомление о попытке замены пароля:</p>
  <blockquote>Вы запросили сброс пароля на сайте. Что бы завершить процесс, щелкните по ссылке ниже</blockquote>
  <p>Письмо должно содержать временную ссылку на окно смены пароля (Требование <a href="#BIW-AC-04">BIW-AC-04</a>).</p>
  <p>Временная ссылка должна действовать 24 часа.</p>
  <p>Письмо должно содержать уведомление:</p> <blockquote>Если это были не вы, то просто проигнорируйте это сообщение</blockquote>
  </td>
    </tr>
  <tr>
    <td>2023-12-27</td>
    <td><b style="color:#FF0000">Удалено</b></td>
    </tr>
</table><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-04-A.V2" href="#">BIW-AC-04-A.V2</a></th>
    <th colspan="2" style="width:100%;text-align:left">Запрос на смену пароля</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> 

  <p>При нажатии кнопки "сменить пароль", на указанный пользователем верифицированный email программа отправляет письмо. Программа должна вывести страницу с уведомлением о необходимости проверки email на наличие письма. Уведомление должно иметь гипперссылку, ведущую на главную страницу и содеражать информацию:
  <blockquote>На Ваш адрес электронной почты user@email.*** отправлено электронное письмо с инструкцией по замене пароля. <u style= color:#0099ff>Вернуться на главную страницу</u></blockquote></blockquote></p> 
  <p>Письмо должно содержать уведомление о попытке замены пароля:
  <blockquote>Вы запросили замену пароля на сайте <u style= color:#0099ff>https://biwol.ru</u>. Что бы завершить процесс, щелкните по ссылке ниже.</blockquote></p>
  
  <p>Письмо должно содержать временную ссылку на окно смены пароля (Требование <a href="#BIW-AC-04.V2">BIW-AC-04.V2</a>).</p>
  <p>Временная ссылка должна действовать 24 часа.</p>
  <p>Письмо должно содержать уведомление: <blockquote>Если это были не вы, то просто проигнорируйте это сообщение</blockquote></p>

  </td>
    </tr>
  <tr>
    <td>2023-12-27</td>
    <td><b style="color:#00f000">Согласовано</b></td>
    </tr>
</table><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-05" href="#">BIW-AC-05</a></th>
    <th colspan="2" style="width:100%;text-align:left">Восстановление пароля через Email</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> 

  <p>Программа должна позволять пользователю восстановить пароль.</p>
  <p>Восстановление пароля доступно только верифицированнуму email.</p>
  <p>Восстановление пароля должно производиться при нажатии на  гипперссылку <u style="color:#0099ff">забыли пароль?</u> в окне авторизации (Требование <a href="#BIW-AC-02">BIW-AC-02</a> и макет <a href= "#BIW-AC-02-example-aut">BIW-AC-02-example-aut</a>).</p>
   <p>Ссылка должна вести на окно восстановления пароля через email (Макет <a href= "#BIW-AC-05-example-1">BIW-AC-05-example-1</a>).</p>
  <p>Окно восстановления пароля через email должно позволять пользователю ввести свой email и нажимать кнопку <b>Восстановить</b>. Email должен пройти проверку согласно требованию <a href= "#BIW-01">BIW-01</a>. После ввода email, на указанный адрес должно отправляться письмо. В окне должно появляться уведомление о направлении письма на указанный email.</p>
   <p>Письмо должно содержать одноразовую ссылку на окно восстановления пароля.</p>
   <p>Временная ссылка должна действать 24 часа.</p>
  <p>Окно восстановления пароля должно позволять ввести новый пароль и должно иметь кнопку сохранения пароля (Макет <a href="#BIW-AC-05-example-2">BIW-AC-05-example-2</a>).</p>
  <p>Новый пароль должен пройти проверку согласно требованию <a href= "#BIW-01">BIW-01</a>. 
  <p>После нажатия кнопки <b>сохранить новый пароль</b>, пароль должен стать действующим.</p>
  
  <br></br>
  <table>
     <th style="text-align:left;min-width:301px;width:25%"> <a id= "BIW-AC-05-example-1" href="#">BIW-AC-05-example-1</a>
     </th>  
     <th style="text-align:left;min-width:300px;width:25%"> 
     <a id= "BIW-AC-05-example-2" href="#">BIW-AC-05-example-2</a>
     </th>   
</table>
  <img src="Макет окна восстановления пароля через E-mail v.02.png" width="300" height="200"  alt="Макет окна восстановления пароля через E-mail" />
  <img src="Макет окна восстановления пароля2.png" width="300" height="200"  alt="Макет окна восстановления пароля" />
     </p></td>
  </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00FF00">Соглововано</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-06" href="#">BIW-AC-06</a></th>
    <th colspan="2" style="width:100%;text-align:left"><s>Удаление учетной записи<s></th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> Программа должна позволять пользователю удалить учетную запись. Учетная запись может быть создана вновь под тем же идентификатором, однако пользовательские данные, включая анкету, должны быть уничтожены безвозвратно.
  </tr>
  <tr>
    <td>2023-12-01</td>
    <td><b style="color:#f00000">Удалено</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-06-A" href="#">BIW-AC-06-A</a></th>
    <th colspan="2" style="width:100%;text-align:left">Удаление учетной записи (после 2 лет бездействия)</th> 
  </tr>
  <tr>
  <td colspan="3"><p align="justify"> Программа должна автоматически удалять учетные записи, которые не использовались более двух лет. Учетная запись считается бездействующий 2 года, если дата закрытия последней действующей сессии пользователя датирована более чем 730 дней назад.

  При наступлении 670 дня бездействия учетной записи,программа должна отправить на e-mail информационное письмо.

  Письмо должно содержатье уведомление с датой удаления бездействующего аккаунта:
  <blockquote>Ваш аккаунт будет удален через 60 дней. Для избежания удаления авторизуйтесь по ссылке ниже.</blockquote>

  <p>В письме должна существовать ссылка, ведущая на главную страницу сайта.</p>

  
  </tr>
  <tr>
    <td>2023-12-21</td>
    <td><b style="color:#00f000">Согласовано</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-07" href="#">BIW-AC-07</a></th>
    <th colspan="2" style="width:100%;text-align:left">Блокировки доступа после неудачных попыток аутентификации</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> Программа должна автоматически блокировать доступ после нескольких неудачных попыток аутентификации (10 попыток по умолчанию). Блокировка должна выполняться на 1 час (по умолчанию). 

  При блокировке доступа, программа должна отправить на email письмо с уведомлением о блокировке доступа к учетной записи.



  </tr>
  <tr>
    <td>2023-12-21</td>
    <td><b style="color:#00ff00">Согласовано</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-AC-08" href="#">BIW-AC-08</a></th>
    <th colspan="2" style="width:100%;text-align:left">Возобновление сессии</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> Программа должна возобновлять сессию на основе секрета общего между клиентом и сервером (далее - сессионного ключа). Срок действия сессионного ключа определяется конфигурационными параметрами на стороне сервера. Заголовок запроса при взаимодействии сервера и клиента должен быть подписан действующим сессионным ключом.
  </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00ff00">Согласовано</b></td>
    </tr>
</table><br/><br/>

<h3 id = "3.1.2. Профиль (-PR)">3.1.2. Профиль (-PR)</h3>
<table style="width:100%">
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-PR-01" href="#">BIW-PR-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Страница Профиля</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> На главной странице должна существовать гиперрсылка, ведущая на страницу профиля.
    
  Гипперссылка должна отображаться только у авторизованного пользователя.
 
  На странице профиля должно существовать:
<ul>
  <li> Поле ввода короткого имени (Тебование <a href="#BIW-PR-03">BIW-PR-03</a>). Короткое имя может быть использовано в письмах на email пользователя;</li>
  <li> Поле отображения статуса пользователя (Требование <a href="#BIW-PR-04">BIW-PR-04</a>);</li>
  <li> Гипперссылка, ведущая на страницу с информацией о получении сертификата;</li>
  <li> Кнопка СОХРАНИТЬ.</li>
  </ul>
<br></br>
<a id="BIW-PR-01-example-pr-short_name" href="#">BIW-PR-01-example-pr-short_name</a>
<br></br>
<img src="Макет страницы профиля.png" width="300" height=""  alt="Макет страницы профиля"/>
<br></br>
После сохранения, поле ввода короткого имени не должно отображается в профиле. На его месте должно отображаться введеное имя. Должна существовать кнопка <u style= "color:#0099ff">изменить</u>. При нажатии на кнопку <u style= "color:#0099ff">изменить</u>, программа должна отобразить поле ввода короткого имени.
<br></br>
<a id ="BIW-PR-01-example-pr-filled" href="#">BIW-PR-01-example-pr-filled</a>
<br></br>
<img src="Макет страницы заполненого профиля профиля.png" width="300" height=""  alt="Макет страницы заполненого профиля профиля.png"/>

   </tr>
  <tr>
    <td>2023-12-21</td>
    <td><b style="color:#00FF00">Согласовано</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-PR-03" href="#">BIW-PR-03</a></th>
    <th colspan="2" style="width:100%;text-align:left">Поле короткого имени</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> 

  На странице профиля должно существовать поле ввода короткого имени.

  Программа должна давать возможность пользователю заполнить поле ввода короткого имени.

  Проверка формата короткого имени должна проводиться в соответствии с требованиями:
  <ul> 
  <li><a href= "#BIW-01">BIW-01.</a></li>
  <li>Поле не должно позволять пользователю вводить более 30 символов;</li> 
  <li>Не должен содержать менее 2 символов;</li>
  <li>Может быть в верхнем или нижнем регистрах;</li>
  <li>Не должен содержать символы " ^ [ ] : ; | = , + * ? < >;</li>
  <li>Буквы должны быть киллиричского или латинского алфавита;</li>
  <li>Может содержать цифры.</li>
  </ul>
  
  <p>В случаях не прохождения проверки, программа не должна повзолять сохранить результат.</p> 

  <p>В случае ошибки ввода, программа должна уведомлять об ошибке в виде текстового сообщения.</p>

<p>Возможные варианты ошибок ввода короткого имени:</p>
<ul style= color:red>
<li>Имя слишком короткое;</li>
<li>Имя содержит запрещенные символы;</li>
<li>Неверный формат имени.</li>
</ul>
 
  </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00FF00">Согласовано</b></td>
    </tr>
</table><br/><br/>

<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-PR-04" href="#">BIW-PR-04</a></th>
    <th colspan="2" style="width:100%;text-align:left">Отображение статуса пользователя</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"><p> <p> В поле "статус" программа должна автоматически подставлять значение (Макет 
      <a href="#BIW-PR-01-example-pr-short_name">BIW-PR-01-example-pr-short_name</a>). Программа должна проводить проверку оплаты пользователем подписки.</p>

  <p>В случае подписки в поле статус дожно быть значение:</p>
  <blockquote>Премиум аккаунт</blockquote>

  <p>В случае отсутвия подписки:</p>
  <blockquote>Базовый аккаунт</blockquote>
 </tr>
<tr>
  <td>2023-12-18</td>
  <td><b style="color:#00FF00">Согласовано</b></td>
  </tr>
</table><br/><br/>

    </tr>
</table>
<h3 id = "3.1.3. Курс (-C)">3.1.3. Курс (-C)</h3>
<table style="width:100%">
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-С-01" href="#">BIW-С-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Расположение списка курсов на сайте</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> На главной странице сайта должна существовать кнопка раскрывающегося списка курсов (Требование <a href= "#BIW-С-02">BIW-С-02</a>).  Список должен открываться при нажатии на кнопку. Список не должен открываться при наведении курсора.
    </tr>
    <tr>
      <td>2023-12-18</td>
      <td><b style="color:#00FF00">Согласовано</b></td>
      </tr>
  </table><br/><br/>


<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-С-02" href="#">BIW-С-02</a></th>
    <th colspan="2" style="width:100%;text-align:left">Список курсов</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify"> 

  Список должен позволять выбрать одно значение из множества вариантов.

  После выбора одного из вариантов, его название должно подставляться в кнопку, список должен скрываться, размеры кнопки при этом должны остаться прежними. Выбраный курс должен сохранятся в течении сессии.

  Список вариантов при появлении не должен блокировать страницу и не должен мешать пользователю нажимать на другие ссылки. Список должен скрываться при клике за его пределами и при повторном клике по кнопке. В этом случае значение раскрывающегося списка не должно меняться.

  Ширина значений из списка не должны быть больше, чем ширина кнопки списка. 
  
 Прокрутка в раскрывающемся списке должна блокировать прокрутку всей страницы, пока указатель курсора находится внутри блока.

 После выбора курса, курс становится текущим. Должна отобразится страница курса (Требование <a href= "#BIW-L-01">BIW-L-01</a>).
<br></br>
<a id = "BIW-C-02-example-list" href="#">BIW-C-02-example-list</a>
<br/><br/>
<img src="Макет списка курсов1.png" width="300" height=""  alt="Макет списка курсов"/>
<br></br>
</tr>
<tr>
  <td>2023-12-18</td>
  <td><b style="color:#00FF00">Согласовано</b></td>
  </tr>
</table><br/><br/>

<h3 id = "3.1.4. Уроки (-L)">3.1.4. Уроки (-L)</h3>
<table style="width:100%">
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-01" href="#">BIW-L-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Страница курса</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">
  В программе должна существовать страница с выбором уроков текущего курса.

  На странице должно существовать:
  <ul>
    <li>Название текущего курса;</li>
    <li>Текстовое поле с описанием курса;</li>
    <li>Гипперссылка, ведущая на страницу урока;</li>
    <li>Графический индикатор статуса прохождения урока.</li> 
  </ul>

  Перейти по гипперссылке, ведущей на страницу урока может любой пользователь, включая не авторизованного пользователя.
  Ограничение в последовательсти выбора урока должно отсутвовать.
  <br></br>
<a id = "BIW-L-01-example" href="#">BIW-L-01-example</a>
  <br></br>
<img src="Макет страницы курса.png" width="350" height=""  alt="Макет страницы курса"/>
  <br></br>

<u>Гипперссылка урока</u>

<p>На странице курса, для каждого урока должна существовать гипперссылка, ведущая на страницу урока (Требование <a href= "#BIW-L-02">BIW-L-02)</a>.</p>

<p>Гипперссылка должна быть отображена в ввиде текста. Текст ссылки должен соответсвовать названию урока (Макет <a href="#BIW-L-01-example">BIW-L-01-example</a>).</p>

<p>Наведение курсора на гипперссылку должно вызывать подсвечивание. При уведении курсора подсвечивание должно пропадать (Макет <a href="#BIW-L-01-example">BIW-L-01-example</a>).</p>

<p><u>Графический индикатор статуса прохождения урока</u></p>

<p>На странице текущего курса, для каждого урока должен существовать графический индикатор статуса прохождения урока. (Макет <a href="#BIW-L-01-example">BIW-L-01-example</a>).
  Индикатор может быть только двух цветов, серым и зеленым. 
  Серым цветом должен обозначаться не пройденный урок, зеленым цветом должен обозначаться пройденный урок.</p>
 
<p>Индикатор не должен влиять на возможность выбора урока.</p>
          
  </tr>
  <tr>
    <td>2023-12-18</td>
    <td><b style="color:#00FF00">Соглововано</b></td>
    </tr>
</table><br/><br/>



<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02" href="#">BIW-L-02</a></th>
    <th colspan="2" style="width:100%;text-align:left">Страница урока</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">
  Переход на страницу урока осуществляется при нажатии на соответсвующую гипперссылку на странице курса(Требование <a href= "#BIW-L-02">BIW-L-02</a>).

  На странице уроков должно существовать:
  <ul>
  <li>Название урока (<a href= "#BIW-L-02-01">BIW-L-02-01</a>);</li>
  <li>Текст урока (<a href= "#BIW-L-02-02">BIW-L-02-02</a>);</li>
  <li>Гиппессылки спровочника (<a href= "#BIW-L-02-03">BIW-L-02-03</a>);</li>
  <li>Индикатор текущей задачи (<a href= "#BIW-L-02-04">BIW-L-02-04</a>);</li>
  <li>Кнопки смены задачи (<a href= "#BIW-L-02-04">BIW-L-02-04</a>);</li>
  <li>Шкала прогресса решения задач (<a href= "#BIW-L-02-05">BIW-L-02-05</a>);</li>
  <li>Поле текста задачи (<a href= "#BIW-L-02-06">BIW-L-02-06</a>);</li>
  <li>Поле схемы задачи (<a href= "#BIW-L-02-06">BIW-L-02-06</a>);</li>
  <li>Панель управления масштабом отборажения схемы задачи (<a href= "#BIW-L-02-06">BIW-L-02-06</a>);</li>
  <li>Поле ввода решения задачи (<a href= "#BIW-L-02-07">BIW-L-02-07</a>);</li>
  <li>Индикатор правильности решения задачи (<a href= "#BIW-L-02-07">BIW-L-02-07</a>);</li>
  <li>Кнопка проверки правильности решения задачи (<a href= "#BIW-L-02-07">BIW-L-02-07</a>);</li>
  <li>Кнопка демонстрации правильного решения задачи (<a href= "#BIW-L-02-07">BIW-L-02-07</a>);</li>
  <li>Кнопка отметки прохождения урока(<a href= "#BIW-L-02-08">BIW-L-02-08</a>).</li>
  </ul>
  <br></br>
<a id = "BIW-L-02-example" href="#">BIW-L-02-example</a>
  <br></br>
<img src="Макет страницы урока2.png" width="350" height=""  alt="Макет страницы урока"/>
<br></br>

  <u>Название урока</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-01" href="#">BIW-L-02-01</a></span>
  
  <p>В работе</p>

  <u>Текст урока</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-02" href="#">BIW-L-02-02</a></span> 

  <p>В работе</p>

<u>Гиппессылки спровочника</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-03" href="#">BIW-L-02-03</a></span>

<p>В работе</p>

<u>Индикатор текущей задачи</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-04" href="#">BIW-L-02-04</a></span>

<p>В работе</p>

<u>Шкала прогресса решения задач</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-05" href="#">BIW-L-02-05</a></span> 

<p>Рещенные задачи должны отображаться на шкале прогресса. Шкала должна заполняться слева на право после успешного решения задачи.</p>

<p>В случае если урок содержит только одну задачу, то шкала не должна отображаться.</p>

<u>Задачи урока</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-06" href="#">BIW-L-02-06</a></span>
<p>В работе</p>
<u>Поле текста</u> 
<p>В работе</p>
<u>Поле схемы</u> 
<p>В работе</p> 
<u>Панель управления масштабом</u>
<p>В работе</p>
<u>Решение задачи</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-07" href="#">BIW-L-02-07</a></span>
<p>В работе</p>
<u>Поле ввода решения</u> 
<p>В работе</p>
<p><u>Индикатор правильности решения задачи</u> 
должен отображаться после нажатия кнопки "проверить". Индикатор дожен быть только двух цветов: красным и зеленым. Красным цветом, в случае если задача решена не верно. Зеленым цветом, если задача решена верно.</p> 
<u>Кнопка демонстрации правильного решения задачи</u> 
<p>В работе</p>

<u>Кнопка отметки прохождения урока</u> <span style="text-align:left;min-width:160px;width:25%"><a id="BIW-L-02-08" href="#">BIW-L-02-08</a></span>

<p>Кнопка "Отметить пройденным" должна быть доступна, только после успешной проверки на правильность решения всех задач урока. При нажатии на доступную кнопку, на странице курса индикатор урока должен быть отображен зеленым цветом. Если урок не предусматривает задачи, то кнопка должна быть доступна. В случае, если кнопка не доступна, программа не должна давать возможность пользователю взаимодействия с кнопкой.</p>

<p>Заливка кнопки должна быть двух цветов: серой и зеленой. Кнопка должна быть залита серым цветом, в случае если она не доступна и зеленым цветом, в случае если она доступна.</p>  

  <tr>
    <td>2024-01-26</td>
    <td><b style="color:#0000FF">В работе</b></td>
    </tr>
</table><br/><br/>

<h3 id = "3.1.5. Хранение данных (-DB)">3.1.5. Хранение данных (-DB)</h3>
<table style="width:100%">
<table style="width:100%">
  <tr>
    <th style="text-align:left;min-width:160px;width:25%"><a id="BIW-DB-01" href="#">BIW-DB-01</a></th>
    <th colspan="2" style="width:100%;text-align:left">Структура базы данных</th> 
  </tr>
  <tr>
    <td colspan="3"><p align="justify">
    <p>Описание структуры в работе</p>
    <a id = "BIW-DB-01-ER" href="#">BIW-DB-01-ER</a>
  <br></br>
<img src="Структура схемы БД BIWOL v003.png" width="500" height="380"  alt="Структура схемы БД BIWOL v003"/>
<br></br>
<tr>
    <td>2023-12-16</td>
    <td><b style="color:#0000FF">В работе</b></td>
    </tr>
</table><br/><br/>




<h2  style="color:#FF0000">Окончание демонстрации</h2>






  
 
   



  


  