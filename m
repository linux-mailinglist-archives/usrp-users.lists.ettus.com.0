Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE35E30FE02
	for <lists+usrp-users@lfdr.de>; Thu,  4 Feb 2021 21:21:56 +0100 (CET)
Received: from [::1] (port=42706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l7l8S-0001yA-T8; Thu, 04 Feb 2021 15:21:52 -0500
Received: from mail-ej1-f51.google.com ([209.85.218.51]:36933)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l7l8P-0001s1-6h
 for usrp-users@lists.ettus.com; Thu, 04 Feb 2021 15:21:49 -0500
Received: by mail-ej1-f51.google.com with SMTP id jj19so7743837ejc.4
 for <usrp-users@lists.ettus.com>; Thu, 04 Feb 2021 12:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/WJtj+VVCOhI1P/8plWjvJtKqdyFZ66qwbUOnH/yKX0=;
 b=HcXwaOCcWEyxgfeBEYQoxZrB3zyIi2P59WdFilAdbpt/pckTBxzBU9FSjyP4CPdKNV
 J1TJ4PXR7479Rs1D+vNlWimsH0/wKluO5ruLjUMOGykAhh3X7yi13hx48nZ6BWWWV4Qf
 b4ggIU1pk75MzZ5CWFX17Fr/GSdTqVSuDOxrZ4fb+fkPGVQeeUhmxqcjWT7N5QR7wa7L
 SLHbgCW+aqjxwwx2Onf1/UjLrEp9xyKCQxQ5yttFRtLVSx8+b4daAUJYbb4ppp70TWQG
 hgr/ESrmQ16Vm4XPHn4VeJbt8WZANYioQvPwJ4kWF4vIV+Z+nBBB2Kc4cYxPCYUU5IMG
 IE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=/WJtj+VVCOhI1P/8plWjvJtKqdyFZ66qwbUOnH/yKX0=;
 b=f2/XCjztjnzjj6DPm6PnDMOR/rZ9rWrSN0wkAbgXjWmjCzP6Dl97PegIzeMA/ZEUyp
 Av2AcGp3b4Dq044epT+lIGjW+o0x3Zw+yx3N0jAFj+XUo614WG0CrxVdIQiE9oEVTg4t
 KW9NxwYuY8hX9PdlAEwooohBESSCOCrUC4wZOqOqbZffwp3DglHbIzpT82/+MHcrEj8P
 mHRS2CvNQTbqlgBDnVxGrkgxrE+y9OVK2bTcsZVcdVzoME4AyZvkXD8K+8lx8PSFYYu6
 CkZFLljSFszV2QXmJOo901HMa+ISjXRpjaps+wmvpoIoaEBKUveUcphJaDXTarJRCIRQ
 +tSQ==
X-Gm-Message-State: AOAM530qqhP/nV0HE6NRjpekO5BeQx2H75QbeK1vLMrVcQBpUHJnRY+G
 qglmhNI6Q30T5NgeZVGbj/LgVo85Lmkf5ZWH5AgZb2EVUPJwnzUF
X-Google-Smtp-Source: ABdhPJzRpYfDXiGwQ+YzXdw8RB2boKUpzclKgi109j2GEdRUzMTnj0Gk0Thx2aoF0dyBsm3IichTScsQAB5rnUw2sWA=
X-Received: by 2002:a17:906:c9cc:: with SMTP id
 hk12mr865524ejb.134.1612470068041; 
 Thu, 04 Feb 2021 12:21:08 -0800 (PST)
MIME-Version: 1.0
References: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
In-Reply-To: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
Date: Thu, 4 Feb 2021 14:20:57 -0600
Message-ID: <CAAg5+Mw45mSPCvFXuDJ==bK+e5J9Nc7aySOKD+p_e1bpWxqE4w@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 rfnocmodtool
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
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

SGkgUmFtZXosCgpJJ2QgbGlrZSB0byByZWNvbW1lbmQgYSB0aG9yb3VnaCB2aWV3aW5nIG9mIHRo
ZSBleGNlbGxlbnQgUkZOb0MgNApXb3Jrc2hvcCB2aWRlbyB0aGF0IEpvbmF0aG9uIFBlbmRsdW0g
YW5kIE5lZWwgUGFuZGV5YSBmcm9tIEV0dHVzClJlc2VhcmNoIHB1dCB0b2dldGhlciBmb3IgR1JD
b24gMjAyMCwgd2hpY2ggaXMgYXZhaWxhYmxlIG9uIFlvdVR1YmUgYXQKaHR0cHM6Ly93d3cueW91
dHViZS5jb20vd2F0Y2g/dj1NOW50d1FpZTl2cy4gVGhpcyBzaG91bGQgd2FsayB5b3UKdGhyb3Vn
aCB0aGUgcHJvY2VzcyBvZiBjcmVhdGluZyBhIG5ldyBvdXQtb2YtdHJlZSBSRk5vQyA0IG1vZHVs
ZSBhbmQKYWRkaW5nIHN1cHBvcnQgZm9yIGl0IHRvIEdOVSBSYWRpbyBhbmQgeW91ciBVU1JQIGRl
dmljZS4KCkJlc3QgcmVnYXJkcywKQWFyb24KCk9uIFRodSwgRmViIDQsIDIwMjEgYXQgMTI6MTUg
UE0gQXNrYXIsIFJhbWV6IHZpYSBVU1JQLXVzZXJzCjx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bT4gd3JvdGU6Cj4KPiBEZWFyIFNpciBvciBNYWRhbSwKPgo+Cj4KPiBJIHdvdWxkIGxpa2UgdG8g
dXNlIG9uZSBvZiB0aGUgYXZhaWxhYmxlIEZQR0EgYmxvY2tzIGZyb20gRXR0dXMg4oCTIHN1Y2gg
YXMgRklSIGZpbHRlciAtLSB0byBjdXN0b21pemUgbXkgRlBHQSBpbWFnZSwgYW5kIGFkZCB0aGUg
Y29ycmVzcG9uZGluZyBjb250cm9sIGRyaXZlciBmb3IgQysrIGFwcGxpY2F0aW9uIGFuZCBHbnVy
YWRpby4gSG93ZXZlciwgYWZ0ZXIgY3JlYXRpbmcgbmV3bW9kIHdpdGggcmZub2Ntb2R0b29sLCBJ
IGhhdmUgdHJpZWQgdG8gYWRkIGZpciBmaWx0ZXIgYmxvY2ssIHRoZSB0b29sIGlzIG5vdCBhd2Fy
ZSBhYm91dCB0aGUgZXhpc3RpbmcgYmxvY2tzLiBJbnN0ZWFkLCB0aGUgcmZub2Ntb2R0b29sIGhh
cyBjcmVhdGVkIGEgbW9kdWxlIGZyb20gc2NyYXRjaCBjYWxsZWQgRklSLiBJbiBvdGhlciB3b3Jk
cywgaXQgZGlkIG5vdCBpbXBvcnQgdGhlIEZJUiBtb2R1bGUgdGhhdCBpcyBvZmZlcmVkIGJ5IEV0
dHVzIHRlYW0uIElzIHRoZXJlIGFueSBvdGhlciB3YXkgb2YgZG9pbmcgdGhpcz8gSG93IGNhbiBh
ZGQgYSBPT1QgUkZOb0MgRklSIGNvbnRyb2wgbW9kdWxlIHRvIGdudXJhZGlvPwo+Cj4KPgo+IEJl
c3QgcmVnYXJkcyAvIE1pdCBmcmV1bmRsaWNoZW4gR3LDvMOfZW4KPgo+IC0tCj4gQXNrYXIsIFJh
bWV6LCBNLlNjLgo+IFJlc2VhcmNoIEFzc29jaWF0ZSAvIFByb2plY3QgTWFuYWdlciAvIERlbGVn
YXRlCj4KPiBXaXJlbGVzcyBDb21tdW5pY2F0aW9ucyBhbmQgTmV0d29ya3MKPiBGcmF1bmhvZmVy
IEluc3RpdHV0ZSBmb3IgVGVsZWNvbW11bmljYXRpb25zLCBIZWlucmljaCBIZXJ0eiBJbnN0aXR1
dGUsIEhISQo+IEVpbnN0ZWludWZlciAzNywgMTA1ODcgQmVybGluLCBHZXJtYW55Cj4gKzQ5ICgw
KTMwIDMxMDAyLTYyOAo+IHJhbWV6LmFza2FyQGhoaS5mcmF1bmhvZmVyLmRlCj4gd3d3LmhoaS5m
cmF1bmhvZmVyLmRlCj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vy
c19saXN0cy5ldHR1cy5jb20K
