Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3B89FEA28
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 19:58:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 36611385C0B
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 13:58:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735585095; bh=4Qb4EZlG/z3RjciTNnbZL3HD1z1Y+tlcXgfM3wToZSA=;
	h=Date:To:From:Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NPEykNG/AJb2VYXsdOyZnhenVl8D/qMZJLIU0JDst+SiVZ3tVvv3HE7mncpfrWcGo
	 9lLITVnRoU46rY3BtROzG0mKGsza5yKOBHVUHLSLmf+8JcfvU2U1LZUxfsqj/Ey/7Z
	 tVdKJx4hRK0YrYKLMIriCNtman+c24fpxNl10hUx7/gw0KZH5FGWWp1zlZXFZc5oxQ
	 iep8pcX8ol9vVpRjacblcnD1PG8eV7MbcJt0nBODbozcBlL8/bjYeYpk9imwQXdfbs
	 q9EQUTWs+qtM/wXTDmca9CXztF7z6RjgZd+qsRZC3rb+vcb20lBa9Tx2GIzjJhTA8z
	 SQGF7TUrVFQ+g==
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id AB530385985
	for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 13:58:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qUMDDOgH";
	dkim-atps=neutral
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-436345cc17bso69112775e9.0
        for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 10:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1735585086; x=1736189886; darn=lists.ettus.com;
        h=content-transfer-encoding:reply-to:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2C2jQmc8t39svFJbYej3+CwAd9zCH7dYyCOL3SDdMA=;
        b=qUMDDOgHIljyCQwF7w6bs/V96TUs875q3WrPS/+xfADSSaSEOUOoVd49y9q3OhpmIB
         EKuZ9fILg0tUszQuRHkCr3AsJA545auxt4GCel1SHhQ/yorZulA+Tag4n8D6/c1n32U8
         SABtjdWgUtvmxaUkyXaBWJ27x+IjF2ORP6hnDZG/o+o6vlFSvV5rildO35cXMDWbN/k3
         LZx4k8Lfg3hKA8hoDLuwoO/CjxC9k9gjqlVbWGpaCNluGnnst3iVRkSDPOBAmNY1Qz5m
         8CClw0+koJXsmmCYfAxtRT8SQGKHPa75VtckTidtitKn9FTM6KTxXslfJT4C94408N3u
         q78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735585086; x=1736189886;
        h=content-transfer-encoding:reply-to:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t2C2jQmc8t39svFJbYej3+CwAd9zCH7dYyCOL3SDdMA=;
        b=tLRrELmcMik1CKpuT3cHJXBoyG5ILSI3k0F5XcESqZ3LzBUzh5k2iZrtg8l8iqsVaA
         c/7S08Ib54IUcRXGzfi2cgjI8WjJr0X59yBFR+lehBxF8NBbguetqt9vtYNl0CdrtV6J
         HgFo2ZXId0p5AR9xc27eV0Svv2SOHbWk6jMlDCowV5da9TRJXGdqTD/+FINmm2cOtitE
         XxsI/eYn0Pcjs0rbrfL1w01Iu8Y0D7YgtWcRRPjL3oDyrc2vZBfcWX/1FUMSJDktSt1V
         2BFSdagkQX7MF/MJkdjuQGG9U8jIuFuKy3A/VoW6KW83rYlbRD3OL9VbI8cBGMtZ1Hg7
         mUfw==
X-Gm-Message-State: AOJu0YxUFbXEp1B+8Ud5Jy3MV+5yXsvw/8IL2scLwM0trGHedhtA5ZEn
	hsmSGMmyE80bLcrXHKfcJ3G/skelHMZZmpKF74HSMoPxqXx/3u8YMHvVA69Pv4QNxcPeAI4Yzlx
	vrto=
X-Gm-Gg: ASbGncunzV37tEHFSPUzgq8Jo2DZ80g1v/36tKz/gdzIoI42I19P52rTluqdVk+fXTX
	xKKIJ1jFidooXN5vOZS7VekBDhoMJaoG5uKrw5r3Fujt2L+i7HjoSH7TSZ9vJr4B8EzcDlVImsN
	fNDQYRFao9YbT4tPf6IM2hkiqYmvCaqnfufqPHU1IkuERYcKE8ah5bnHMMMrisRY635p4D2ls5E
	cJrG4+Q3hOJOsqUwRyKqo1OPcqsVXK0q2fQpzTTDQTz2+pVr+3Q+8vuTbUMKrHaHcPTJ6TfH98X
	5TdPR0jLRphtmcjQNQEx+8ejGHwzQF/CbF7oAo8=
X-Google-Smtp-Source: AGHT+IE4AlRffyFQyJ06gYBARWB52phj4vfTifT4DFd5z9FX1GQCuv+tGybJuOTR60byBRM3qHYuQA==
X-Received: by 2002:a5d:5e09:0:b0:386:4a60:6650 with SMTP id ffacd0b85a97d-38a223fd5dbmr32885029f8f.42.1735585086304;
        Mon, 30 Dec 2024 10:58:06 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc6b:fa00:10fc:1619:bea3:90d1? ([2001:16b8:cc6b:fa00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e1acsm30793587f8f.68.2024.12.30.10.58.05
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 10:58:05 -0800 (PST)
Message-ID: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
Date: Mon, 30 Dec 2024 19:58:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users <usrp-users@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: RIQCMY4O3I246M7C5VBGPTRQ7H2L27YY
X-Message-ID-Hash: RIQCMY4O3I246M7C5VBGPTRQ7H2L27YY
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: mueller_usrp_users@baseband.digital, usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RIQCMY4O3I246M7C5VBGPTRQ7H2L27YY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGVsbG8gVVNSUC1Vc2VycywNCg0Kd2hlbiBJIHN0YXJ0ZWQgaGFuZ2luZyBhcm91bmQgb24gdGhp
cyBtYWlsaW5nIGxpc3QgaW4gMjAxMywgSSB3b3VsZG4ndCBoYXZlIHRob3VnaHQgdGhhdCANCkkn
ZCBzdGlsbCBiZSBhcm91bmQgZWxldmVuIHllYXJzIGxhdGVyLg0KDQpCdXQgbWUgYXNraW5nIGFi
b3V0IHNwb3JhZGljIHNpZ25hbCBpc3N1ZXMgYWZ0ZXIgcmV0dW5pbmcsIHdoaWNoIEkgd291bGQg
bGF0ZXIgYmUgYWJsZSB0byANCmF0dHJpYnV0ZSB0byB0aGUgaW1wdWxzZSByZXNwb25zZSBvZiB0
aGUgREMgY2FuY2VsbGF0aW9uIElJUiBmaWx0ZXIgaW4gdGhlIE4yeDAgc2V0IG1lIG9uIA0KYSBj
b3Vyc2UgdG8sIG1vc3RseSBvdXQgb2YgYm9yZWRvbSBkdXJpbmcgbGVuZ3RoeSBjb21tdXRlLCB3
b3VsZCBzdGFydCBoZWxwaW5nIHBlb3BsZSBvbiANCnRoaXMgbWFpbGluZyBsaXN0IGZyb20gbWVt
b3J5IGFuZCBsZWN0dXJlIG9mIHRoZSBHTlUgUmFkaW8sIFVIRCAoYW5kIGdhdGV3YXJlKSBzb3Vy
Y2UgDQpjb2RlLiBJdCB3YXMgdGhhdCB3aGljaCBpbiB0aGUgZW5kIGdvdCBtZSBjb250cmFjdGVk
IGFzIHN1cHBvcnQgZW5naW5lZXIgZm9yIEV0dHVzIGluIA0Kc3ByaW5nIDIwMTQuDQoNClNpbmNl
IHRoZW4gSSBoYWQgdGhlIGluZHViaXRhYmxlIGZ1biB0byBwbGF5IGEgc21hbGwgc3VwcG9ydGlu
ZyByb2xlIGluIHNvIG1hbnkgcHJvamVjdHMgDQpvZiB1c2VycyBvZiBVU1JQcyDigJMgZnJvbSB1
bml2ZXJzaXR5IHN0dWRlbnRzIGRvaW5nIHRoZXNlcywgb3ZlciBlbmdpbmVlcnMgZ2V0dGluZyBk
ZW1vcyB0byANCmRvIHdoYXQgdGhleSB3YW50LCB0byBwaHlzaWNpc3RzIGNvbnRyb2xsaW5nIGlu
c3RydW1lbnRzIG9yIG9ic2VydmluZyB0aGUgY29zbW9zLCB0byANCmJpb2xvZ2lzdHMgd29ya2lu
ZyBpbiB0aGUgbW9zdCBkaXZlcnNlIGltYWdpbmFibGUgZmllbGRzLCBhbmQgb2YgY291cnNlIHRo
ZSBtYW55LCBtYW55IA0KY29tbXVuaWNhdGlvbnMgZW5naW5lZXJzIGJ1aWxkaW5nIGZhbnRhc3Rp
YyBzeXN0ZW1zIGZyb20gKGJvdGggbGl0ZXJhbCBhbmQgU2hhbm5vbikgYml0cyANCmFuZCBwaWVj
ZXMhDQoNCldvdWxkbid0IHdhbnQgdG8gbWlzcyB0aGF0IGV4cGVyaWVuY2UhIFNvIHRoYW5rIHlv
dSBhbGwgZm9yIGJlaW5nLCBzdWJzdW1pbmcgZXZlcnl0aGluZywgDQp0aGUgbmljZXN0IHVzZXIg
Y29tbXVuaXR5IGEgaGFyZHdhcmUvc29mdHdhcmUgdmVuZG9yIGNvdWxkIHdpc2ggZm9yIDopIFRo
ZSBVU1JQIHNlcmllcyBvZiANCmRldmljZXMgd2lsbCByZW1haW4gdGhlIGNsYXNzIG9mIGRldmlj
ZXMgSSdtIG1vc3QgaW50aW1hdGVseSBmYW1pbGlhciB3aXRoIOKAkyBhbmQgSSdtIHN1cmUgDQp0
aGF0IGV2ZW4gYXMgTkkvRW1lcnNvbiBtb3ZlZCB0byBoaWdoZXIgcHJpY2VkIHNlZ21lbnRzIGFu
ZCBwYWlkIHN1cHBvcnQgbW9kZWxzLCB5b3Ugd2lsbCANCmNvbnRpbnVlIHRvIGRvIGdyb3VuZGJy
ZWFraW5nIGFuZCBpbmZyYXN0cnVjdHVyZS11cGhvbGRpbmcgd29yayB3aXRoIHRoZW0hDQoNCkJ1
dDogaXQncyB0aW1lIGZvciBtZSB0byBtb3ZlIG9uIOKAkyB0aGlzIGlzIGdvaW5nIHRvIGJlIG15
IGxhc3QgcHVibGljIGVtYWlsIGZyb20gYW4gDQpAZXR0dXMuY29tIGFkZHJlc3MuDQoNCldoaWNo
IGRvZXNuJ3QgbWVhbiBJJ2xsIG5vdCBiZSBhcm91bmQ7IHlvdSdsbCBzdGlsbCBmaW5kIG1lIG9u
IHRoZSBtYWlsaW5nIGxpc3QgdW5kZXIgDQpvdGhlciBhZGRyZXNzZXMgKHNlZSB0aGUgUmVwbHkt
VG86IG9mIHRoaXMgbWVzc2FnZSksIGFuZCB5b3UgbWlnaHQga25vdyB0aGF0IEkgYWxyZWFkeSAN
CmtpbmQgb2Ygc3R1Y2sgd2l0aCB0aGUgR05VIFJhZGlvIHByb2plY3QuIE15IHJlbnQgaXMgc3Rp
bGwgcGFpZCBmb3IgYnkgU0RSIHN5c3RlbSB3b3JrLCANCmFuZCBzbyB5b3UnbGwgcnVuIGludG8g
bWUgYXQgR1JDb24sIHlvdSdsbCBmaW5kIG1lIHBsYXN0ZXJpbmcgdGhlIGludGVybmV0IHdpdGgg
DQpleHBsYW5hdGlvbnMgb2YgdGhlIHN0cmFuZ2VzdCB0aGluZ3MuDQoNCk5vdCB0byBnZXQgdG8g
c2VudGltZW50YWw6DQoNCktlZXAgb24gaGFja2luZyB0aGUgZWxlY3Ryb21hZ25ldGljIHNwZWN0
cnVtLCBuZXZlciBsZXQgeW91ciBzaWduYWwgcHJvY2Vzc2luZyBzbG93IGRvd24sIGFuZDoNCg0K
U2VlIHlvdSBhcm91bmQsDQoNCk1hcmN1cyBNw7xsbGVyDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVz
cnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
