Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0C445B927
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 12:36:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E1E6D3838CB
	for <lists+usrp-users@lfdr.de>; Wed, 24 Nov 2021 06:36:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="hf8cSTQ9";
	dkim-atps=neutral
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8698D383F0D
	for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 06:34:55 -0500 (EST)
Received: by mail-wr1-f54.google.com with SMTP id o13so3566623wrs.12
        for <usrp-users@lists.ettus.com>; Wed, 24 Nov 2021 03:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pNfXu4QpXy3cRqP20YrPA7gzH1aiYPH2S+EaOiOi2U8=;
        b=hf8cSTQ968QwpF7bGxFcHl9mSTLI5WDVTU2ceXvolZ7M1Qlv6UUDPnrm7Dm4DXR/Hj
         k97+8WkkAGOY5HrmLPndX3yN6M4w3uaX9Lk/pZnLkKB3Vxa3+QzN6ScpL6//jfLG8AuR
         h+O7yrdIG0zWUFNdRa6Qk/5TALwIG3BqyIq0ZjBVgjJE8GCFLVvO9RCR9djo+CjdSI8V
         1PwjXWuP5dQny4WYbTAEZQBvpuTOeK7XDpker6R90ZTXLVdaits7INVm1Iz7rHi8efGs
         7MkMwcmjxrVX9rlceUqjT8dBrG+EADlK49rZByvrTMy+c9sFRevqgWYYY4crE0hq9h7M
         B2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pNfXu4QpXy3cRqP20YrPA7gzH1aiYPH2S+EaOiOi2U8=;
        b=0X7cDvoEMJMz++d/lyrpiuHyxahUU2bhjw4bgvbDGbo/Riu8OuMsZO4k07iPdhKsx+
         Co9yy4+ez+2JuX2GQgIMS1oz4ulQv1r6qrZu+kxfB3L99RdxDNWvR//xYh3NnYddXlVD
         O915CMG6vA7l2e0PMwhIF1QEtbCfsCANTFEJzsZx3cEYv85Sg9YNvOvp9Epc3EVb7XTc
         9NzbwCzAAX04HZjkuk6bTxeJFFDqSBB0ZxoZJUsyNrwJr1OATOip5bdT3ahhdr/XKa8Z
         3HnAnI9lJoQ8BrE2adpFloSqWq9f3dEee/BJhQn/9CKFnxEzjTx5YBVclKjah0LD8BtS
         Eqzw==
X-Gm-Message-State: AOAM532Fp26aZ77IaCIRkjpBOomIuKGWzoFnLSz4K/o6n1B6eDMsQGxE
	S45eqa5ggpeSJhRtB6s108fX9SIRIwa4cDKO
X-Google-Smtp-Source: ABdhPJxHfB1O83iG4nNAJqe2/JE0SUeFqvi+ioY/bXY1bxWXgmlv1ca1ocGhVVLX4DdCDhfkvL9p5Q==
X-Received: by 2002:a05:6000:1048:: with SMTP id c8mr17117778wrx.352.1637753694103;
        Wed, 24 Nov 2021 03:34:54 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-35.hsi.kabel-badenwuerttemberg.de. [46.223.163.35])
        by smtp.gmail.com with ESMTPSA id g198sm4595692wme.23.2021.11.24.03.34.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 03:34:53 -0800 (PST)
Message-ID: <57355ef5-9d97-18bf-389b-dae97049f7c2@ettus.com>
Date: Wed, 24 Nov 2021 12:34:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <172b6b6d5dbc4d78a3dfa177cc65503c@kongsberg.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <172b6b6d5dbc4d78a3dfa177cc65503c@kongsberg.com>
Message-ID-Hash: L57XDI53UPKS6UX4DQ3T6MOZX3ND6HWG
X-Message-ID-Hash: L57XDI53UPKS6UX4DQ3T6MOZX3ND6HWG
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Creating sinc-spectrum
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L57XDI53UPKS6UX4DQ3T6MOZX3ND6HWG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkgQW5kcmVhcywNCg0Kd2hpY2ggVVNSUCBpcyB0aGlzIGFib3V0PyBNeSBndWVzcyBpcyB0aGUg
WDMxMCwgYW5kIHlvdSdyZSB1c2luZyB0aGUgQmFzaWNUWCANCmRhdWdodGVyYm9hcmQuIElzIHRo
YXQgY29ycmVjdD8NCg0KVG8gdGFsayBhYm91dCBmZWF0dXJlcyBvZiB0aGUgRFNQIGFyY2hpdGVj
dHVyZSwgaXQncyBhbHNvICh2ZXJ5KSByZWxldmFudCB0byBrbm93IHdoaWNoIA0KdmVyc2lvbiBv
ZiBVSEQgd2UncmUgdGFsa2luZyBhYm91dCENCg0KPiBJIGhhdmUgdHJpZWQgdG8gYWRkICBza2lw
X2R1Yz0xIHdoaWNoIGlzIG1lbnRpb25lZCBpbiBzb21lIG9mIHRoZSBkb2N1bWVudGF0aW9uLCBi
dXQgdGhlIG91dHB1dCBzcGVjdHJ1bSBkb2VzIA0Kbm90IGNoYW5nZS4NCg0KDQpUaGF0J3MgdHJ1
ZSwgSSBvbmx5IGZpbmQgYSBzaW5nbGUgc2VlbWluZ2x5IG9ycGhhbmVkIGNvZGUgbWVudGlvbiBv
ZiBza2lwX2R1Yy4uLiBidXQgaXQgDQp3YXMgb25seSBtZW50aW9uIChpZiBJIHJlbWVtYmVyIGNv
cnJlY3RseSkgaW4gdGhlIGRvY3VtZW50YXRpb24gb2YgdGhlIE4zeHgsIHNvIHRoYXQgd291bGQg
DQpjb25mbGljdCB3aXRoIG15IFgzeHggZ3Vlc3MuLi4NCg0KDQo+IElzIHRoaXMgY29tbWFuZCAg
b3V0ZGF0ZWQgb3Igbm90IHN1cHBvcnRlZD8gSSB3b25kZXIgc2luY2UgdGhlIEhHIEZQR0EgaW1h
Z2UgaGFzIGxpc3RlZCB0aGF0IHRoZSByb3V0aW5nIA0KYmV0d2VlbiBEVUMgYW5kIHJhZGlvIGFy
ZSDigJxzdGF0aWPigJ0uDQoNCg0KVGhpcyBkZXBlbmRzIG9uIHRoZSBVSEQgdmVyc2lvbjsgZ2Vu
ZXJhbGx5LCBSRk5vQyB3aWxsIGFsbG93IHlvdSB0byBmZWVkIGZ1bGwtcmF0ZSBzaWduYWwgDQpp
bnRvIHRoZSByYWRpbyBmcm9udGVuZC4gVGhlICJuZXdlciIgdGhlIFVIRCwgdGhlIG1vcmUgZmxl
eGlibGUgaXQgZ2V0cywgZXNzZW50aWFsbHkuDQoNCg0KPiBoYXZlIG5vdGljZWQgdGhhdCBJIGdl
dCBzb21ldGhpbmcgY2xvc2VyIHRvIHdoYXQgSSB3YW50IGlmIEkgY2hvb3NlIGFuIG9kZCBpbnRl
cnBvbGF0aW9uIA0Kb3JkZXIsIGJ5IHNldHRpbmcgbWFzdGVyX2Nsb2NrX3JhdGUgdG8gMTkwIE1I
eiBpbnN0ZWFkIG9mIDIwME1Iei4NCg0KDQpVaCEgVGhhdCBub3cgY29tcGxldGVseSBjbGFzaGVz
IHdpdGggbXkgZ3Vlc3MsIGJlY2F1c2UgdGhlIFgzMTAgZG9lc24ndCBzdXBwb3J0IDE5MCBNSHog
DQpNQ1IgYXQgYWxsLCBJIHRob3VnaHQuDQoNCkJ1dCB5ZXMsIGlmIHlvdSB1c2UgYW4gb2RkIGlu
dGVycG9sYXRpb24gb24gYW55IHRoaXJkIHNlcmllcyBVU1JQLCB5b3UgZ2V0ICJsZXNzIGdvb2Qi
IA0Kc3BlY3RydW0sIGJlY2F1c2Ugbm9uZSBvZiB0aGUgcmVsYXRpdmVseSBnb29kIGhhbGYtYmFu
ZCBmaWx0ZXJzIGNhbiBiZSB1c2VkLCBhbmQgdGhlIA0KYWRqdXN0YWJsZSBDSUMgZmlsdGVyIG5l
ZWRzIHRvIGRvIGl0IGFsbCwgbGVhZGluZyB0byBzaWRlbG9iZXMsIHdoaWNoIGluIHR1cm4gbGVh
ZCB0byBtb3JlIA0Kc3F1YXJpc2huZXNzLg0KDQoNCkJlc3QgcmVnYXJkcywNCg0KTWFyY3VzDQoN
Ck9uIDI0LjExLjIxIDExOjQwLCBBbmRyZWFzLkJlcnRoZXVzc2VuLS0tIHZpYSBVU1JQLXVzZXJz
IHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4gSeKAmWQgbGlrZSB0byBjcmVhdGUgKGltaXRhdGUpIHRo
ZSBzaW5jKGYvZnMpIHNwZWN0cnVtIHRoYXQgd291bGQgYmUgZ2VuZXJhdGVkIGZyb20gYW4gDQo+
IHVuZmlsdGVyZWQgemVyby1vcmRlciBob2xkIERBQyBvdXRwdXQsIGNsb2NrZWQgYXQgMTAgTWh6
LiBNYWluIGNoYXJhY3RlcmlzdGljcyBhcmUgYSANCj4gcGVhayBhcm91bmQgY2VudGVyIGZyZXF1
ZW5jeSwgcm9sbGluZyBvZmYgdG8gbnVsbHMgYXQgKy0gMTAgTUh6IGFyb3VuZCB0aGUgY2VudGVy
IGZyZXF1ZW5jeS4NCj4NCj4gVGhlIElGIHNpZ25hbCBpcyBhIHJhbmRvbSBCUFNLIHNlcXVlbmNl
Lg0KPg0KPiBXaGVuIEkgc3RyZWFtIHRoZSBCUFNLIHNlcXVlbmNlIGF0IDEwIE1IeiAsIEkgZ2V0
IGEgZmxhdCBzcGVjdHJ1bSBiZXR3ZWVuICstIDVNSHogc2luY2UgDQo+IHRoZSBEVUMgaXMgZG9p
bmcgaXRzIGpvYiBpbiB1cHNhbXBsaW5nIHRvIDIwME1IeiBEQUMgcmF0ZS4NCj4NCj4gSSBoYXZl
IHRyaWVkIHRvIGFkZCBza2lwX2R1Yz0xIHdoaWNoIGlzIG1lbnRpb25lZCBpbiBzb21lIG9mIHRo
ZSBkb2N1bWVudGF0aW9uLCBidXQgdGhlIA0KPiBvdXRwdXQgc3BlY3RydW0gZG9lcyBub3QgY2hh
bmdlLiBJcyB0aGlzIGNvbW1hbmQgb3V0ZGF0ZWQgb3Igbm90IHN1cHBvcnRlZD8gSSB3b25kZXIg
DQo+IHNpbmNlIHRoZSBIRyBGUEdBIGltYWdlIGhhcyBsaXN0ZWQgdGhhdCB0aGUgcm91dGluZyBi
ZXR3ZWVuIERVQyBhbmQgcmFkaW8gYXJlIOKAnHN0YXRpY+KAnS4NCj4NCj4gSSBoYXZlIG5vdGlj
ZWQgdGhhdCBJIGdldCBzb21ldGhpbmcgY2xvc2VyIHRvIHdoYXQgSSB3YW50IGlmIEkgY2hvb3Nl
IGFuIG9kZCANCj4gaW50ZXJwb2xhdGlvbiBvcmRlciwgYnkgc2V0dGluZyBtYXN0ZXJfY2xvY2tf
cmF0ZSB0byAxOTAgTUh6IGluc3RlYWQgb2YgMjAwTUh6LiBUaGUgDQo+IHVwc2FtcGxpbmcgcmF0
aW8gYmVjb21lcyAxOTBNSHovMTBNSHogPSAxOSwgd2hpY2ggaXMgb2RkLCBhbmQgSSBnZXQgc29t
ZSB3YXJuaW5ncyBhYm91dCANCj4gaGFsZi1iYW5kIGZpbHRlcnMgYW5kIENJQyByb2xsLW9mIGlu
IHRoZSBjb25zb2xlLg0KPg0KPiBJbiB0aGlzIG1vZGUsIHdoYXQgZG9lcyB0aGUgRFVDIGRvIHRv
IHRoZSBzaWduYWw/IElzIGl0IGVxdWl2YWxlbnQgdG8gYnlwYXNzaW5nIHRoZSBEVUM/DQo+DQo+
IEhvdyBkbyBJIGJlc3QgYXZvaWQgYW55IGVmZmVjdHMgaW50cm9kdWNlZCBieSBEVUM/DQo+DQo+
IFJlZ2FyZHMsDQo+DQo+IEFuZHJlYXMuDQo+DQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPg0KPiBDT05GSURFTlRJQUxJVFkNCj4gVGhpcyBlLW1haWwgYW5kIGFueSBh
dHRhY2htZW50IGNvbnRhaW4gS09OR1NCRVJHIGluZm9ybWF0aW9uIHdoaWNoIG1heSBiZSBwcm9w
cmlldGFyeSwgDQo+IGNvbmZpZGVudGlhbCBvciBzdWJqZWN0IHRvIGV4cG9ydCByZWd1bGF0aW9u
cywgYW5kIGlzIG9ubHkgbWVhbnQgZm9yIHRoZSBpbnRlbmRlZCANCj4gcmVjaXBpZW50KHMpLiBB
bnkgZGlzY2xvc3VyZSwgY29weWluZywgZGlzdHJpYnV0aW9uIG9yIHVzZSBpcyBwcm9oaWJpdGVk
LCBpZiBub3QgDQo+IG90aGVyd2lzZSBleHBsaWNpdGx5IGFncmVlZCB3aXRoIEtPTkdTQkVSRy4g
SWYgcmVjZWl2ZWQgaW4gZXJyb3IsIHBsZWFzZSBkZWxldGUgaXQgDQo+IGltbWVkaWF0ZWx5IGZy
b20geW91ciBzeXN0ZW0gYW5kIG5vdGlmeSB0aGUgc2VuZGVyIHByb3Blcmx5Lg0KPg0KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
