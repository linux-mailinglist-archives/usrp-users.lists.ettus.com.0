Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C89302BD7
	for <lists+usrp-users@lfdr.de>; Mon, 25 Jan 2021 20:44:06 +0100 (CET)
Received: from [::1] (port=34746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l47mK-0008AI-8w; Mon, 25 Jan 2021 14:44:00 -0500
Received: from mail-wr1-f52.google.com ([209.85.221.52]:44508)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dario@iptronix.com>) id 1l47mE-0007bD-DR
 for usrp-users@lists.ettus.com; Mon, 25 Jan 2021 14:43:54 -0500
Received: by mail-wr1-f52.google.com with SMTP id d16so13522068wro.11
 for <usrp-users@lists.ettus.com>; Mon, 25 Jan 2021 11:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iptronix.com; s=google;
 h=message-id:savedfromemail:date:subject:importance:from:to
 :mime-version; bh=I3UIJW6yc7GeD3k5TDF6NJfZrvZBOgEvQCgNomaRamQ=;
 b=SJZu0rmYx0/UKWQvLuI0wyX9hO8ehXlM361Q3VYnOuEH97XlXILnlcpqGzerqbeNEu
 UtLnOtj4Jr2E1CmsOFGqW81qEFFcR6kA4mcV7P6gdstVx5FseujPVJ7sqahAKkKwxz3v
 Iotrk82QKiEOQP0iZWfK0Wv8YTisAX2KF/KOodG7F0vf9PNA6B3CWqk5SiVzSCkzq4sR
 6En0Dhjr5AdsRhbhsENvG4AiM2vSVtFTuYgu4o3/VSGsD/9WHH1yZQM3wJVe6jvmgy7V
 Waofnoe2siXRDeMoJfIC/yu/Mda9UnVzMyomDj2kKji9GnCrGxJjTy/l4pj0YH39UOej
 CMIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:savedfromemail:date:subject
 :importance:from:to:mime-version;
 bh=I3UIJW6yc7GeD3k5TDF6NJfZrvZBOgEvQCgNomaRamQ=;
 b=hw0c7I1Qvv3X9Qye3wH4rVkwQPFOlt9oc0AUrkHUy5taoF/+D4fNbmAJVApe9Qqr00
 RAhpVa5YyB87o9/mWgWhEcHUHp4xKtgzWOSTwM/oilPNuUXn8mqsIiEE7GKL7finrzcO
 If60NymJxuggax4h/BezK9rJA/BVbT3GThIaEAS3r/wwIq/gSm+p4ZQu+OCyjsKa/vmK
 WAgavjamNFwGF1amtOzs/vzAspDRgeKrZIl0u8RDtC4GBtbMEPRVdsfwMCHfr4Ih8Wd7
 hudro8wotGRqyxmBVFZhTqfSd4ta/GvZ8PDTgvnz5ET6kA78prOR8auvKUGd63haOl6Y
 6MAA==
X-Gm-Message-State: AOAM531MdmKh16QpQIEmCNQCqSjdzpiLb7FcmTKFLfjgQeTII96hoYgn
 SxIQSVzw3bZ1UHtxB6QNIL16xFITOu4QZiXD
X-Google-Smtp-Source: ABdhPJydXtaU9ILkjNOvQzdC2AoPmkhb4IKS0WlwfGlMYxuiqLKlTfD0x/Fn7aW0EN+w5Dm36IdUrw==
X-Received: by 2002:adf:f8c1:: with SMTP id f1mr2682009wrq.76.1611603792865;
 Mon, 25 Jan 2021 11:43:12 -0800 (PST)
Received: from [192.168.0.28] ([151.44.154.176])
 by smtp.gmail.com with ESMTPSA id v4sm24495992wrw.42.2021.01.25.11.43.11
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Jan 2021 11:43:11 -0800 (PST)
Message-ID: <600f1f4f.1c69fb81.6ffb3.d431@mx.google.com>
SavedFromEmail: dario@iptronix.com
Date: Mon, 25 Jan 2021 20:43:10 +0100
Importance: normal
To: usrp-users@lists.ettus.com
MIME-Version: 1.0
Subject: [USRP-users] uhd4.0 and blocks with multiple ports
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
From: dario via USRP-users <usrp-users@lists.ettus.com>
Reply-To: dario <dario@iptronix.com>
Content-Type: multipart/mixed; boundary="===============0552425809055067465=="
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

--===============0552425809055067465==
Content-Type: multipart/alternative; boundary="--_com.samsung.android.email_464848319235210"

----_com.samsung.android.email_464848319235210
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGksSSBjcmVhdGVkIGEgYmxvY2sgd2l0aCB0d28gb3V0cHV0IHBvcnRzIGFuZCBvbmUgaW5wdXQg
cG9ydCBob3dldmVyIHdoZW4gaSB0cnkgdG8gY29ubmVjdCBpdCB2aWEgc3RyZWFtIGVuZHBvaW50
cyBnbnVyYWRpbyBjb21wYW5pb24gY2xhaW1zIGl0IGRvZXNuJ3Qga25vdyBob3cgdG8gaGFuZGxl
IHRoaXMuIEkgdGhlbiBhZGRlZCBhIHNleG9uZCBpbm91dCBhcyBpIHJlY2FsbCB0aGF0IG9uIHVo
ZCAzLjE1IGl0IGlzIG5lY2Vzc2FyeSB0byBoYXZlIGFzIG1hbnkgaW5wdXRzIGFzIG91dHB1dHMg
YnV0IGl0IGdhdmUgYmFjayB0aGUgc2FtZSBlcnJvciBub3cgc2F5aW5nIGl0IGRvZXNuJ3Qga25v
dyBob3cgdG8gY29ubmVjdCBibG9ja3Mgd2l0aCB0d28gaW5wdXRzIGFuZCB0d28gb3V0cHV0cy5J
J20gYSBiaXQgY29uZnVzZSBiZWNhdXNlIGl0IHNlZW1zIHJhZGlvIGZvciBleGFtcGxlIGhhcyB0
d28gb3V0cHV0cyBob3dldmVyIGl0IGlzIHN0YXRpY2FsbHkgY29ubmVjdGVkLiBJcyBpdCBhdCBh
bGwgcG9zc2libGUgdG8gaGF2ZSBhIGR5bmFtaWMgY29ubmVjdGlvbiBvZiBhIGJsb2NrIHdpdGgg
bXVsdGlwbGUgb3V0cHV0cz8gV2hhdCBpcyB0aGUgcG9zc2libGUgcmVhc29uIHdoeSBub2RlIG1h
bmFnZXIgcmVwb3J0cyBpdCBkb2Vzbid0IHN1cHBvcnQgdGhpcyBjb25uZWN0aW9uP1RoYW5rcyxE
YXJpbw==

----_com.samsung.android.email_464848319235210
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9VVRGLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXYgZGlyPSJh
dXRvIj5IaSw8L2Rpdj48ZGl2IGRpcj0iYXV0byI+SSBjcmVhdGVkIGEgYmxvY2sgd2l0aCB0d28g
b3V0cHV0IHBvcnRzIGFuZCBvbmUgaW5wdXQgcG9ydCBob3dldmVyIHdoZW4gaSB0cnkgdG8gY29u
bmVjdCBpdCB2aWEgc3RyZWFtIGVuZHBvaW50cyBnbnVyYWRpbyBjb21wYW5pb24gY2xhaW1zIGl0
IGRvZXNuJ3Qga25vdyBob3cgdG8gaGFuZGxlIHRoaXMuIEkgdGhlbiBhZGRlZCBhIHNleG9uZCBp
bm91dCBhcyBpIHJlY2FsbCB0aGF0IG9uIHVoZCAzLjE1IGl0IGlzIG5lY2Vzc2FyeSB0byBoYXZl
IGFzIG1hbnkgaW5wdXRzIGFzIG91dHB1dHMgYnV0IGl0IGdhdmUgYmFjayB0aGUgc2FtZSBlcnJv
ciBub3cgc2F5aW5nIGl0IGRvZXNuJ3Qga25vdyBob3cgdG8gY29ubmVjdCBibG9ja3Mgd2l0aCB0
d28gaW5wdXRzIGFuZCB0d28gb3V0cHV0cy48L2Rpdj48ZGl2IGRpcj0iYXV0byI+SSdtIGEgYml0
IGNvbmZ1c2UgYmVjYXVzZSBpdCBzZWVtcyByYWRpbyBmb3IgZXhhbXBsZSBoYXMgdHdvIG91dHB1
dHMgaG93ZXZlciBpdCBpcyBzdGF0aWNhbGx5IGNvbm5lY3RlZC4gSXMgaXQgYXQgYWxsIHBvc3Np
YmxlIHRvIGhhdmUgYSBkeW5hbWljIGNvbm5lY3Rpb24gb2YgYSBibG9jayB3aXRoIG11bHRpcGxl
IG91dHB1dHM/IFdoYXQgaXMgdGhlIHBvc3NpYmxlIHJlYXNvbiB3aHkgbm9kZSBtYW5hZ2VyIHJl
cG9ydHMgaXQgZG9lc24ndCBzdXBwb3J0IHRoaXMgY29ubmVjdGlvbj88L2Rpdj48ZGl2IGRpcj0i
YXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj5UaGFua3MsPC9kaXY+PGRpdiBkaXI9ImF1
dG8iPjxicj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+RGFyaW88L2Rpdj48ZGl2IGRpcj0iYXV0byI+
PGJyPjwvZGl2PjwvYm9keT48L2h0bWw+

----_com.samsung.android.email_464848319235210--



--===============0552425809055067465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0552425809055067465==--


