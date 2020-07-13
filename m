Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 387FC21CC41
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 02:07:13 +0200 (CEST)
Received: from [::1] (port=59814 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1julzw-0005xw-3V; Sun, 12 Jul 2020 20:07:08 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:33373)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1julzt-0005m3-0E
 for USRP-users@lists.ettus.com; Sun, 12 Jul 2020 20:07:05 -0400
Received: by mail-qk1-f178.google.com with SMTP id j80so10704329qke.0
 for <USRP-users@lists.ettus.com>; Sun, 12 Jul 2020 17:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=/ZFUbAPpM5dQz7EOCxwpfFYqlN6b8QTgMvXbLRTclXs=;
 b=RgUaA5j29mNWDUTrJPo7mn0PU8NlvP6g4BlZD1kvCdRtb4zPnlRtFmgiaZYZgLb2rH
 iD0UxHjxTJ/QbNH/i09js5OrrK8I/Pbf+03icrtJpFtBX1HgVGG4pNwDl2dLOTTQm9+k
 VfxtQQZB+1znjqXZaM4IccwjE2QGOIJEN2v7vmyjil7ZDM8NI3iR9jdSnsA4DiRN7d0f
 qnIyhPIICiOKTyGvhzb1k/zJ0WuOUJRe78T2sXkNeKlnAvIntB0PMuW0LDCwkAWP//VN
 Cdk7K8sFAbvZAIFPXqCllXTD4mvWs2p2fHe1AJaq7PLL/s917z5IQqsrC8pPOYuoMI5k
 upsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=/ZFUbAPpM5dQz7EOCxwpfFYqlN6b8QTgMvXbLRTclXs=;
 b=WF7vVgzaflnd1OfsCwv+1bsn5DcxYX+DB6WAqVT2Lk5zkbbWZwQMpSoUHKp5FY3MI6
 QyXkUD3cyBid4W8IihnpJlmbHs8E77nbZ4tFafZtiZob+xtHZ9sRpEps/Q5xXVl+rYoz
 0XHOtGbW5tRkY23dNfXGmXQ6U0xzpQRE7x9uY9qT+GqpQTp+jrQIdDcEDUD/fs9/+B2f
 OQgMWgZgdwsFQUSn3bA2Uzj10KqNJGN7MKhl/DOhN9hJr4pAFBfp/OjM7bmFVodyYpG/
 1v+GxRLEUx6v7S/olHVEd7YNB0775ZWLgaHZErmTEfvBSOQJDirDtX3Sv7SMQxqTq3w0
 qZRg==
X-Gm-Message-State: AOAM531kPTvpIUfibAfF1Fye+x9SJu+v6PjA0C11wOoEkBzz0tk15jAm
 WMrl7CM5IbkKrmBXUr1E3Lc=
X-Google-Smtp-Source: ABdhPJw+LR2gNwR3p38hoOTnPJ4jmEW0HoV+444NCAcltKt129m5zEZ4/dM9T2naw1UM/2x1fZlX0A==
X-Received: by 2002:a37:7747:: with SMTP id s68mr79737620qkc.42.1594598779495; 
 Sun, 12 Jul 2020 17:06:19 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id t65sm16988337qkf.119.2020.07.12.17.06.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 17:06:19 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jul 2020 20:06:18 -0400
Message-Id: <459FB5B3-6256-4878-8AD1-9F836DE1E48C@gmail.com>
References: <385E8FD5-A5AB-486F-A701-919B97328B40@gmail.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <385E8FD5-A5AB-486F-A701-919B97328B40@gmail.com>
To: Larry Dodd <101science@gmail.com>
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
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

VGhlIEIyMTAgaXMgc2VsZiBjb250YWluZWQgYW5kIHR1bmVzIGRvd24gdG8gNTBNaHogYXQgdGhl
IGxvd2VzdC4gVGhlIExGUlggaXMgZm9yIG90aGVyIHR5cGVzIG9mIFVTUlBzLiBTbyBmaXJzdCB0
aGluZ3MgZmlyc3QsIHdoYXQgdHlwZSBvZiBVU1JQIGRvIHlvdSBoYXZlPwoKU2VudCBmcm9tIG15
IGlQaG9uZQoKPiBPbiBKdWwgMTIsIDIwMjAsIGF0IDc6NDMgUE0sIExhcnJ5IERvZGQgdmlhIFVT
UlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPiAKPiDvu79JIG5l
ZWQgdG8gc2V0IHVwIGEgR05VIEhGIHNwZWN0cnVtIGFuYWx5emVyIHdpdGggYSB3YXRlcmZhbGwg
dXNpbmcgbXkgQjIxMCwgTE5BLCBhbmQgTEZSWCBkYXVnaHRlciBib2FyZC4gVGhlIHRhcmdldCB3
b3VsZCBiZSBhIDE1IHRvIDMwIE1IeiAob3Igd2lkZXIpIGluc3RhbnRhbmVvdXMgc3BlY3RydW0g
Zm9yIFJhZGlvIEFzdHJvbm9teSB3b3JrLiBSYXRoZXIgdGhhbiByZS1jcmVhdGluZyBzb21ldGhp
bmcgdGhhdCBhbHJlYWR5IGV4aXN0cyB3aGVyZSBjb3VsZCBJIGdldCBhIHNpbWlsYXIgR05VIGZs
b3dncmFwaD8gU2luY2UgSSBhbSBicmFuZCBuZXcgdG8gVVNSUCBhbnkgYWR2aWNlIGlzIHZlcnkg
d2VsY29tZS4gCj4gVGhhbmtzLAo+IExhcnJ5LCBLNExFRCAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4g
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxt
YW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
