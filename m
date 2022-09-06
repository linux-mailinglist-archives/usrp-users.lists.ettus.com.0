Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8735AE9AA
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 15:33:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A03C93837AC
	for <lists+usrp-users@lfdr.de>; Tue,  6 Sep 2022 09:33:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662471221; bh=Sd2Dg4orbvFC7RI43Oz9SsxT80cFCTHaqpdWsYtC/zo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oSZAtr3KfJFiVZH9UFaeQstyEu7XKvMk4leBeRCRP5B50KYzVvn+2Rwvy0G8u+Bc8
	 9OWd7lBJxvPGVK7mJ6BcQ+1T2IEBZomZQVR/VfocgcKEFpy6SCPdRgQIT9aTW18Bwv
	 fpK6YePPXt+VMGwed1cOWCg+RmJU23e1JpEOTs0ZTRZ7zLrb7d10HthF+H21PbObIb
	 3c2U7Tp64plL0m1KmPW3kmfZY8ooWjm1fsdieSd1royQ39MbXDhKmvpgFsmYcmFxvL
	 O3kgJcB2PTwkgyDl4J9F8pTBRWvp/J7HcUUMD5AntCx1vHt7/IZ/V9pMG1yHhJ2nuM
	 uJmAfwRwmw09w==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A8C9D380C4C
	for <usrp-users@lists.ettus.com>; Tue,  6 Sep 2022 09:25:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nj6vdECh";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id a22so7936967qtw.10
        for <usrp-users@lists.ettus.com>; Tue, 06 Sep 2022 06:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=6r7sPd2gnU4GQP1SsE0OBbGISxT+ocoCvDger6D+IxU=;
        b=nj6vdEChHM7GNMYPOpR6Y4RPKm7EAr/pkgmgDFbj4Vr4yrg59cVS9AlvcQZU6NKswA
         +i61ZbCLbKPRFbYsql86DAM+36X6oDpkhjUlWROrRTt7etG7k2PW2oOS+J//fHzVgt38
         8N1gqpyh4OmPV26ikn8ZidAoU+ZqN8jAKdRS/rtZzVipxT03nrv7stjycMmEiU1Loq9Y
         HvNRrjmqaIs/k7a66dvSr9upsVW9AdBqjBAWGCjkAtITZTA6ZGmLG/0oL6FV2wWVxjWj
         Dh04nkznwIMRKCttPGqvPq6htn6+sEJ3eWwPuaPDpK37EILPuvSCRZfHyGTfhLLxsKVu
         sAmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=6r7sPd2gnU4GQP1SsE0OBbGISxT+ocoCvDger6D+IxU=;
        b=TBIfC9WIp2mCpiGrbA9+wr903vzOpGAEZxELH8N3WSh340l544pdKDzbOQlrchzJqi
         ZP6h1Miaox0eKYxM/OGpyxbGeVnDhapCVmjdmZpJO31BcQsT8l1luLXJ7Sdsi7JjjRpH
         /P5OoSIGFjhLxMAm4JgUK8CMwLpufqLAv1YFa0qHynzQjBnIYfj5OiPrWCgcBwxZuRaW
         RbLacqhxV2bXOU1sfOdVEuHGFH7cnNEyECsG3gML92woP5wmqisgpRnC66OwxGMcmzYW
         Rh0cv5eYtsKWSJjBXhZQJhiTjaIt3moBJmVpXWGXdCTQ+puAEazkOj6aucuDrxriMvws
         iX6A==
X-Gm-Message-State: ACgBeo1hBDJU/47KIl2k/QELV4vRrHhchT43nche8IKJTGbCQebo5kUJ
	VdTbZVRaAPH2cdXFoV36XieYTsG7IjQ=
X-Google-Smtp-Source: AA6agR7Cn9VFVJlRYNNUZwSKcCsUcC6gVtYl7rlSVrstLrTMmipJZ0VnD6EXHYU/UrVJxF0LmDidTg==
X-Received: by 2002:a05:622a:1889:b0:343:19a6:d972 with SMTP id v9-20020a05622a188900b0034319a6d972mr43880297qtc.290.1662470725898;
        Tue, 06 Sep 2022 06:25:25 -0700 (PDT)
Received: from [192.168.2.199] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id u18-20020a05620a0c5200b006bb8b5b79efsm11298032qki.129.2022.09.06.06.25.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 06:25:25 -0700 (PDT)
Message-ID: <a7671c21-f483-56a8-a1ca-9b1f7d524cf6@gmail.com>
Date: Tue, 6 Sep 2022 09:25:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7AUEsR9P77hW8bSeMrLN0QdhhvZOGC0JDTC0YoYUVZk@lists.ettus.com>
Message-ID-Hash: 63RTMBBGVZY6KSHEKRYMICLBLTLDVX3C
X-Message-ID-Hash: 63RTMBBGVZY6KSHEKRYMICLBLTLDVX3C
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK drops samples at low rates
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/63RTMBBGVZY6KSHEKRYMICLBLTLDVX3C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0wNiAwNjo1NiwgcGVycGVyQG8yLnBsIHdyb3RlOg0KPg0KPiBIaSwNCj4NCj4g
RnJ1aXRzIGFzaWRlLCB0aGF0IHdhcyBhIHZhbGlkIHF1ZXN0aW9uLiBDYXVzZSBvZiBiYWQgcGVy
Zm9ybWFuY2Ugd2hlbiANCj4gY29tYmluaW5nIERQREsgd2l0aCBHTlUgUmFkaW8gaXMgYSB0b3Bp
YyB0aGF0IG5lZWRzIHRvIGJlIGFkZHJlc3NlZC4NCj4NCj4gTXkgaHlwb3RoZXNpcyByZWdhcmRp
bmcgdGhlIGNhdXNlIHdhczoNCj4NCj4gRFBESyBuZWVkcyBmZXcgcHJvY2Vzc29yIGNvcmVzIGZv
ciBpdHNlbGYgb25seS4gR05VIFJhZGlvIHJ1bnMgYSBsb3QgDQo+IG9mIHRocmVhZCAob25lIHRo
cmVhZCBwZXIgYmxvY2sgKykgYW5kIGl0IGRvZXNu4oCZdCBjYXJlIHRoYXQgaXQgdHJpZXMgDQo+
IHRvIHJ1biBvbiBjb3JlcyB0aGF0IGFyZSBidXN5IHdpdGggRFBESyByZWxhdGVkIHdvcmsuIEFu
ZCB0aGF0IGNhdXNlcyANCj4gcHJvYmxlbXMuDQo+DQpJJ2xsIHBvaW50IG91dCB0aGF0IGF0IHRo
ZSBlbmQgb2YgdGhlIGRheSwgaXQncyB0aGUgKk9TIGtlcm5lbCogdGhhdCANCm1ha2VzIHRocmVh
ZCBzY2hlZHVsaW5nIGRlY2lzaW9ucy0tdGhlIGFwcGxpY2F0aW9uIGNhbg0KIMKgIGdpdmUgaXQg
aGludHMgKHNvbWV0aW1lcyBzdHJvbmcgb25lcyksIGJ1dCBhdCB0aGUgZW5kIG9mIHRoZSBkYXks
IHRoZSANCmtlcm5lbCBhc3NpZ25zIHdvcmsgdG8gdGhyZWFkcy7CoMKgIEFuIGFwcGxpY2F0aW9u
LCBwZXIgc2UsDQogwqAgZG9lc24ndCAia25vdyIgd2hldGhlciBhIGdpdmVuIGNvcmUgaXMgYnVz
eS0taXQncyBub3QgdGhlIG9uZSANCmFzc2lnbmluZyB3b3JrIHRvIGNvcmVzLi4uDQoNCj4gVGhl
IHJlc3VsdGluZyBzb2x1dGlvbiB0aGF0IHNvbHZlZCB0aGUgcHJvYmxlbSBmb3IgbWU6DQo+DQo+
IEZvciBldmVyeSBibG9jayBvZiB0aGUgZmxvdy1ncmFwaCBydW4gc2V0X3Byb2Nlc3Nvcl9hZmZp
bml0eSB3aXRoIGEgDQo+IGxpc3Qgb2YgYWxsIHByb2Nlc3NvciBjb3JlcyBtaW51cyBEUERLIGNv
cmVzLCB0aGF0IHlvdSBzZXQgaW4gdGhlIA0KPiAvZXRjL3VoZC91aGQuY29uZiBmaWxlLg0KPg0K
PiBCZXN0IFJlZ2FyZHMsDQo+IFBpb3RyIEtyeXNpaw0KPg0KPg0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
