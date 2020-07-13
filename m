Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A40A21CCD9
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 03:43:07 +0200 (CEST)
Received: from [::1] (port=60386 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1junUk-0002Q4-EG; Sun, 12 Jul 2020 21:43:02 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:36813)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1junUg-0002Hp-Cp
 for usrp-users@lists.ettus.com; Sun, 12 Jul 2020 21:42:58 -0400
Received: by mail-qk1-f181.google.com with SMTP id e11so10847800qkm.3
 for <usrp-users@lists.ettus.com>; Sun, 12 Jul 2020 18:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=6FS6UslZv1bVmZHAIwxzvlHcJQ3ckdaDcXn7Lzfkf3Y=;
 b=DyajAU7OrX6dUMkgT+17j83vxo9G6gxpw1X641wwcwyxaoff2/jV6G3jPIMVXmyNJN
 iOqGu+lXienbmHMgCVvYGG7Vfrm2MnL28HtMkhTEX8lo7/2RfuWP5GxD9m2+4Zr57cQ4
 9Arguq2eGK+OoU8ywuXy8sOrEfVYEN4LZtsNTY47M8SQ11YKdbvr3vPUHPSHr0zynjxW
 sopltMEAal4K2MRjsT8F/s2jdN0QNCJRM/V3PNHQea7QcjS4bzZPWe49n7569Nyj6emj
 3uBfR3RoIW8qchO1wvN1jxebXYmFTB15eLKycUs18QP/dLy6vg0sTnP67F4rLnFoqhLQ
 EX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=6FS6UslZv1bVmZHAIwxzvlHcJQ3ckdaDcXn7Lzfkf3Y=;
 b=Q62OheT+yk3vA09xvAfRY9CazdUEKEdqZC//dJuKAM6aOLna/vHOsf09wjYEtGHY1w
 9JKny8IClO6xvQOnr5D5wvidTbMTim25I6v2pSw5lnphUGSYuXWLyOtKppSUCzL48k4L
 R1vZbRSOThXQiGqEkiBMDY3VEOyUsMlOHGb45TQK1a0KWudQKA9/UwblaUFrsYA6G4CH
 Yx3UoHu84HDFl7EmxmaSHT+aSwcPdbo5mxpVWX/3AbLBFX7rFO6WZI+9MYfTABmA4PRn
 USlelhuqdeMMWBt8CPWpj+Zd1Qt0whLyBZF1vBjP6rNV+ZCe1AV8M+ZnhuNvsUIgsDEu
 m7Eg==
X-Gm-Message-State: AOAM5309byulP9rsmf9Ps/yZ5YLmKzwfIw9+nC1hDG4boGPuqXvvMwIW
 qeG6gSZ7Tx8gZlC8fWGpe+rFh42aCSw=
X-Google-Smtp-Source: ABdhPJyX+5O2zDRf/3KUBysLMY86NLPXz2nLkM6+JK4lh5mUcpZw+3Opgx80mtbGG3ncGQQUttrRHQ==
X-Received: by 2002:a37:ec7:: with SMTP id 190mr74517777qko.421.1594604537152; 
 Sun, 12 Jul 2020 18:42:17 -0700 (PDT)
Received: from [192.168.1.18] ([207.89.11.117])
 by smtp.gmail.com with ESMTPSA id n143sm16569099qkn.94.2020.07.12.18.42.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 18:42:16 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 21:42:15 -0400
Message-Id: <C60A86E7-87F4-4921-BE5D-71DDA57411E1@gmail.com>
References: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
Cc: usrp-users@lists.ettus.com
In-Reply-To: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] B210 GNU HF Spectrum Analyzer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

TWFyY3VzCkFjdHVhbGx5IEkgZG9u4oCZdCBoYXZlIHRoZSBCMjEwIG9yIHRoZSBMRlJYIHlldCBh
cyBJIGp1c3Qgb3JkZXJlZCB0aGVtIGJ1dCB0aGF04oCZcyBhbGwgSSBvcmRlcmVkLiBEbyBJIG5l
ZWQgdG8gY2FuY2VsIHRoZSBvcmRlcj8KTGFycnksIEs0TEVEIAoKPiBPbiBKdWwgMTIsIDIwMjAs
IGF0IDg6MDYgUE0sIE1hcmN1cyBEIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gCj4g77u/VGhlIEIyMTAgaXMgc2VsZiBjb250YWluZWQgYW5kIHR1bmVzIGRvd24gdG8g
NTBNaHogYXQgdGhlIGxvd2VzdC4gVGhlIExGUlggaXMgZm9yIG90aGVyIHR5cGVzIG9mIFVTUlBz
LiBTbyBmaXJzdCB0aGluZ3MgZmlyc3QsIHdoYXQgdHlwZSBvZiBVU1JQIGRvIHlvdSBoYXZlPwo+
IAo+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiAKPj4gT24gSnVsIDEyLCAyMDIwLCBhdCA3OjQzIFBN
LCBMYXJyeSBEb2RkIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4g
d3JvdGU6Cj4+IAo+PiDvu79JIG5lZWQgdG8gc2V0IHVwIGEgR05VIEhGIHNwZWN0cnVtIGFuYWx5
emVyIHdpdGggYSB3YXRlcmZhbGwgdXNpbmcgbXkgQjIxMCwgTE5BLCBhbmQgTEZSWCBkYXVnaHRl
ciBib2FyZC4gVGhlIHRhcmdldCB3b3VsZCBiZSBhIDE1IHRvIDMwIE1IeiAob3Igd2lkZXIpIGlu
c3RhbnRhbmVvdXMgc3BlY3RydW0gZm9yIFJhZGlvIEFzdHJvbm9teSB3b3JrLiBSYXRoZXIgdGhh
biByZS1jcmVhdGluZyBzb21ldGhpbmcgdGhhdCBhbHJlYWR5IGV4aXN0cyB3aGVyZSBjb3VsZCBJ
IGdldCBhIHNpbWlsYXIgR05VIGZsb3dncmFwaD8gU2luY2UgSSBhbSBicmFuZCBuZXcgdG8gVVNS
UCBhbnkgYWR2aWNlIGlzIHZlcnkgd2VsY29tZS4gCj4+IFRoYW5rcywKPj4gTGFycnksIEs0TEVE
IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
