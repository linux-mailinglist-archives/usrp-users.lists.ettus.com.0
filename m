Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B3D524E5A
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 15:33:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BB69384396
	for <lists+usrp-users@lfdr.de>; Thu, 12 May 2022 09:33:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652362395; bh=6+7m3yd6Qch/cqfkE3MnQJ27/rJnjXyiBhggjpnrO0A=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J4XQHxnsVwjyimTDo+7znjE0KeesUbCL7YwzvCjoDvHsz53Kmh+pC+q/v4zAKoQRy
	 Hxar6uME4blubKw/FsOKQIFVWW5ZD7x1Vz2oWQZDgrEA/FoCODZBUE4J9WwrCqkjQ+
	 EN6xEbKfMxfZcHI+rGxKFh2lc8zOJiKgME0sij/gaEkwLg747rR9yjQ6OZ6G8CHLCn
	 IGEFvULVPrcjima8iZH9ycPjBtf6W+qT4zEn5J1N/M5rrjsWcYZbv2KDiAJKNcsnKn
	 67uK9Vx3BaxDGpBCxlR9RTSEuJyOOarhVl6iK6npCYJYdlUO5QhqGVlYbXa3OrozS4
	 0Nl1iOAVzGXZQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8DB7638446D
	for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 09:21:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="A1ugxSYl";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id h13so4345361qvh.0
        for <usrp-users@lists.ettus.com>; Thu, 12 May 2022 06:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=2JMnVY0+fkwTabn/xTVi51FSxp4OSmmIDCRboijXEHQ=;
        b=A1ugxSYluwkhTtn3EER+5KMZVqS6V599Qp+Ww+J4rHC4mz3Jes7DjLevGgs7SauAgy
         6WeWVwkXYsFiNHCDt1yczLHfwg0mUfAC+TVClHcRNWRR3YZPvsP2Dn/6tyDd7dkm9E6b
         OXAX8jD+U8WsEHhbjm+eEQLMTEbhIWa5jkdT7e0sW/0FotbgGgKOZgYb1uVMtwj7vv8S
         0zNpK7ew/guINFdcMBb0jVXI6c5ZCGVRu5V8XEbPLxsUGs7u2WHb/GbUD6F6S/iRqrX3
         4wiHw11vCD+nXfARIsLYumaY0e2/GmQ6TJPaqRdcdNLm8QNpzymrGsyaijR/wMSlpcyP
         /Yww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2JMnVY0+fkwTabn/xTVi51FSxp4OSmmIDCRboijXEHQ=;
        b=R+yGMVC4koObqXnzkBgMiLzcAYW2+f5NjyLhqJqKHWoSBMWK5kEVsmfwSvVsxrv0+t
         Pb1qzOS71fBJLYTufPuAqavcFren0Va86phXIW5GmQamxsyZ7krmgjy2TjcY4xoQ/I7G
         fxKNBhP2XxE9MWPuK6X29o6tjGai4nKjCqiHhwJoxS988OmclZb+rZ2GiMg4x9FdtELL
         9p9TpLjtMnJmc6YQGmNNeY1uXGaMc+PUNPhGaqW+6DrFwG+6GMZUkmyTQWdSqEJ0cYHi
         rYBXk/f2IUahENq0javinY99bpsRXoBUC04x4vkzJ9KdD2vPvkP+ccPmnYxySekaBy6q
         2PPg==
X-Gm-Message-State: AOAM532YZ678wRk+9StMfKRTem6xyGml3UcpNPHVHcJNfNRzGIo72zHC
	UTl8lcLCnlKQ5uo8V/406nU=
X-Google-Smtp-Source: ABdhPJzzUv1kjCCNAyZo5ipgTxEaRWd9kaBuiaXXLd+bqILjkS3GIZgJmtR7oPUG8WYXv/SM41/82g==
X-Received: by 2002:a05:6214:500c:b0:435:6b7d:5bc3 with SMTP id jo12-20020a056214500c00b004356b7d5bc3mr27025798qvb.92.1652361710081;
        Thu, 12 May 2022 06:21:50 -0700 (PDT)
Received: from [192.168.2.162] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id p26-20020a05620a113a00b0069fc13ce22asm2884521qkk.91.2022.05.12.06.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 06:21:49 -0700 (PDT)
Message-ID: <4cdd5993-707d-f0d8-6912-9cea79528221@gmail.com>
Date: Thu, 12 May 2022 09:21:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dobler, Anton" <anton.dobler@unibw.de>,
 "discuss-gnuradio@gnu.org" <discuss-gnuradio@gnu.org>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652294738824.26535@unibw.de>
 <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
 <1652297098503.13596@unibw.de>
 <294650d1-0eb7-d077-d024-f8a4e75ccafa@gmail.com>
 <20220512085008.t5jsg4uojzhalmiz@barbe>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20220512085008.t5jsg4uojzhalmiz@barbe>
Message-ID-Hash: YHWOGOPR7VG7FDPZVSU4NT72FYBEXKIG
X-Message-ID-Hash: YHWOGOPR7VG7FDPZVSU4NT72FYBEXKIG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC, UHD4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YHWOGOPR7VG7FDPZVSU4NT72FYBEXKIG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0xMiAwNDo1MCwgQ8OpZHJpYyBIYW5ub3RpZXIgd3JvdGU6DQo+DQo+IFRoZSBT
SEEyNTYgZXJyb3Igc2VlbXMgbGVnaXQuDQo+IElmIHlvdSBjb21wYXJlIHRoZSBoYXNoIGJldHdl
ZW4gdGhlIGRvd25sb2FkZWQgemlwIGFuZCB0aGUgbWFuaWZlc3QsDQo+IHRoZXkgZG8gbm90IG1h
dGNoLg0KPg0KPiBFeHBlY3RlZCBoYXNoIGZvciAiZTN4eF9lMzEwX3NnMV9mcGdhX2RlZmF1bHQi
IFsxXToNCj4gODljYjY5ODUxODRkNDFkNDJiYzViZGU4N2FkZGI1NDMyZjUxYTA2NzE3NWMxZWM0
ODU2OGE4YzAzMDA4Y2JkYQ0KPg0KPiBzaGEyNTZzdW0gb2YgZG93bmxvYWRlZCB6aXAgWzJdOg0K
PiA3M2NhZDNjZDUyNzFkMzg4ZGUyNzFhY2NkMTUwNDVkYWNhOGQ2MWM4NTBhNWNjOTQ1OWJkMzhk
YzBjYjY4OTNjDQo+DQo+DQo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC91
aGQvYmxvYi9iMzhjOWQ4MzcyMDE0ODI4NDJiMDBlMWFmODU4Y2JjZjUxNzkxYzE3L2ltYWdlcy9t
YW5pZmVzdC50eHQNCj4gWzJdIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hl
L2UzeHgvdWhkLTJjYmE2NWIvZTN4eF9lMzEwX3NnMV9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlw
DQpZZXMsIEkganVzdCBtYW51YWxseSB3ZW50IHRocm91Z2ggdGhlIHN0ZXBzIG15c2VsZiBhbmQg
aXQncyBhIA0KbWlzLW1hdGNoLsKgIEhvcGVmdWxseSBFdHR1cyBjYW4gZ2V0IHRoaXMgZml4ZWQu
DQoNCkNoZWVycw0KDQo+Pj4gVGhhbmsgeW91LA0KPj4+DQo+Pj4gQlINCj4+PiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCj4+PiAqVm9uOiogRGlzY3Vzcy1nbnVyYWRpbw0KPj4+IDxkaXNjdXNzLWdudXJhZGlv
LWJvdW5jZXMrYW50b24uZG9ibGVyPXVuaWJ3LmRlQGdudS5vcmc+IGltIEF1ZnRyYWcgdm9uDQo+
Pj4gTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NCj4+PiAqR2VzZW5k
ZXQ6KiBNaXR0d29jaCwgMTEuIE1haSAyMDIyIDIwOjU0OjE1DQo+Pj4gKkFuOiogZGlzY3Vzcy1n
bnVyYWRpb0BnbnUub3JnOyB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4+ICpCZXRyZWZm
OiogUmU6IFJGTm9DLCBVSEQ0LjANCj4+PiBPbiAyMDIyLTA1LTExIDE0OjQ1LCBEb2JsZXIsIEFu
dG9uIHdyb3RlOg0KPj4+PiBEZWFyIENvbW11bml0eSwNCj4+Pj4NCj4+Pj4NCj4+Pj4gSSB0cnkg
dG8gc2V0IHVwIGEgYmFzaWMgZmxvd2dyYXBoIGluIEdSQyBjb25zaXN0aW5nIG91dCBvZiBhIG51
bGwNCj4+Pj4gc291cmNlLCBhIHR4IHN0cmVhbWVyIGFuZCBEVUMgYW5kIGEgVFggcmFkaW8uDQo+
Pj4+DQo+Pj4+DQo+Pj4+IEkgdXNlIFVIRDQuMCBhbmQgR1IzLjguMi4NCj4+Pj4NCj4+Pj4NCj4+
Pj4gSG93ZXZlciwgSSBnZXQgdGhlIGZvbGxvd2luZyBlcnJvciBtZXNzYWdlOg0KPj4+Pg0KPj4+
Pg0KPj4+PiAvUnVudGltZUVycm9yOiBSdW50aW1lRXJyb3I6IEVycm9yIGR1cmluZyBSUEMgY2Fs
bCB0byBgaW5pdCcuIEVycm9yDQo+Pj4+IG1lc3NhZ2U6IFJ1bnRpbWVFcnJvcjogUmVjZWl2ZXIg
cHJvZmlsZSBvdXQgb2YgcmFuZ2UgUkYgYmFuZHdpZHRoLi8NCj4+Pj4NCj4+Pj4NCj4+Pj4gSSB0
cmllZCBkaWZmZXJlbnQgc2V0dGluZ3MgZm9yIHNhbXBsZSByYXRlLCBldGMuIGJ1dCBzdGlsbCBJ
IGdldA0KPj4+PiB0aGF0IGVycm9yLiBJIGF0dGFjaGVkIHRoZSB1c2VkIGZsb3dncmFwaC4NCj4+
Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gVGhlIHNlY29uZCBxdWVzdGlvbiBpcyB3aXRoIHJl
Z2FyZHMgdG8gdGhlIGRlZmF1bHQgZnBnYSBpbWFnZXMuIFdoZW4NCj4+Pj4gSSBkb3dubG9hZCB0
aGUgaW1hZ2VzIEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3I6DQo+Pj4+DQo+Pj4+DQo+Pj4+IC9b
RVJST1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNoIG1hbmlmZXN0IGZvciBodHRw
czovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4L3VoZC0yY2JhNjViL2UzeHhf
ZTMxMF9zZzFfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+Pj4+IC8wMTEzNyBrQiAvIDAx
MTM3IGtCICgxMDAlKSBlM3h4X2UzMTBfc2czX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAvDQo+
Pj4+IC9bRVJST1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNoIG1hbmlmZXN0IGZv
ciBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9lM3h4L3VoZC0yY2JhNjVi
L2UzeHhfZTMxMF9zZzNfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+Pj4+IC8xMDE4MyBr
QiAvIDEwMTgzIGtCICgxMDAlKSBlM3h4X2UzMjBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcC8N
Cj4+Pj4gL1tFUlJPUl0gRG93bmxvYWRlZCBTSEEyNTYgZG9lcyBub3QgbWF0Y2ggbWFuaWZlc3Qg
Zm9yIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hlL2UzeHgvdWhkLTJjYmE2
NWIvZTN4eF9lMzIwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPj4+PiAvMjA3Mjkga0Ig
LyAyMDcyOSBrQiAoMTAwJSkgbjN4eF9uMzEwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAvDQo+
Pj4+IC9bRVJST1JdIERvd25sb2FkZWQgU0hBMjU2IGRvZXMgbm90IG1hdGNoIG1hbmlmZXN0IGZv
ciBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9iaW5hcmllcy9jYWNoZS9uM3h4L3VoZC0yY2JhNjVi
L24zeHhfbjMxMF9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwIS8NCj4+Pj4gLzE0MzQ1IGtCIC8g
MTQzNDUga0IgKDEwMCUpIG4zeHhfbjMwMF9mcGdhX2RlZmF1bHQtZzJjYmE2NWIuemlwLw0KPj4+
PiAvW0VSUk9SXSBEb3dubG9hZGVkIFNIQTI1NiBkb2VzIG5vdCBtYXRjaCBtYW5pZmVzdCBmb3Ig
aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vYmluYXJpZXMvY2FjaGUvbjN4eC91aGQtMmNiYTY1Yi9u
M3h4X24zMDBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcCEvDQo+Pj4+IC8yNzI4NSBrQiAvIDI3
Mjg1IGtCICgxMDAlKSBuM3h4X24zMjBfZnBnYV9kZWZhdWx0LWcyY2JhNjViLnppcC8NCj4+Pj4g
L1tFUlJPUl0gRG93bmxvYWRlZCBTSEEyNTYgZG9lcyBub3QgbWF0Y2ggbWFuaWZlc3QgZm9yIGh0
dHBzOi8vZmlsZXMuZXR0dXMuY29tL2JpbmFyaWVzL2NhY2hlL24zeHgvdWhkLTJjYmE2NWIvbjN4
eF9uMzIwX2ZwZ2FfZGVmYXVsdC1nMmNiYTY1Yi56aXAhLw0KPj4+Pg0KPj4+PiBXaGF0IGNhbiBJ
IGRvIHRvIHNvbHZlIHRoYXQgcHJvYmxlbT8NCj4+Pj4NCj4+Pj4NCj4+Pj4NCj4+Pj4gQW55IGhl
bHAgd291bGQgYmUgbW9yZSB0aGFuIHdlbGNvbWUhDQo+Pj4+DQo+Pj4+DQo+Pj4+IFRoYW5rcywN
Cj4+Pj4NCj4+Pj4NCj4+Pj4gQlIsDQo+Pj4+DQo+Pj4+DQo+Pj4+IEFudG9uDQo+Pj4+DQo+Pj4g
V2hhdCB0eXBlIG9mIFVTUlA/wqAgQXJlIHlvdSBydW5uaW5nIHRoaXMgb24gdGhlIGRldmljZSBp
dHNlbGYsIG9yIG92ZXIgYQ0KPj4+IG5ldHdvcmsgY29ubmVjdGlvbj/CoCBJZiBvdmVyIGEgbmV0
d29yayBjb25uZWN0aW9uLCB3aGF0IHR5cGUgb2YNCj4+PiBjb25uZWN0aW9uPw0KPj4+DQo+Pj4N
Cj4+PiBUaGUgU0hBMjU2IGVycm9ycyBtZWFucyB0aGF0IHRoZXJlJ3MgYSBwcm9ibGVtIHdpdGgg
dGhlIHJlcG9zaXRvcnksIG9yDQo+Pj4gdGhhdCB5b3VyIGFjY2VzcyB0byB0aGUgcmVwb3NpdG9y
eSBpcyBjb3JydXB0aW5nIGZpbGVzLCBvciB0aGV5J3JlIGJlaW5nDQo+Pj4gY29ycnVwdGVkIG9u
DQo+Pj4gIMKgIHlvdXIgc3lzdGVtIGFzIHRoZXkgYXJyaXZlLsKgwqAgSSBoYXZlbid0ICpoZWFy
ZCogdGhhdCB0aGUgcmVwb3NpdG9yeQ0KPj4+IGhhcyBhbnkgcHJvYmxlbXMgZm9yIHRoYXQgcmVs
ZWFzZSBvZiBVSEQuDQo+Pj4NCj4+Pg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxl
YXZlQGxpc3RzLmV0dHVzLmNvbQo=
