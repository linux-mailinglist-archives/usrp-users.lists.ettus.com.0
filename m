Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 024D1422AA5
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 16:15:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D013C3843A8
	for <lists+usrp-users@lfdr.de>; Tue,  5 Oct 2021 10:15:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cN08fvmX";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 65BAC383C9B
	for <usrp-users@lists.ettus.com>; Tue,  5 Oct 2021 10:14:48 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id p4so19877852qki.3
        for <usrp-users@lists.ettus.com>; Tue, 05 Oct 2021 07:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=uIH/e4pHW4KAOLyC5//wv/9j0SUXvnWRc8ix6RQE/P8=;
        b=cN08fvmXfj/iURTJZC0sq8VgEgQVmUi8nDw6TUXnEppXbcrALZyxweIYweXT3YkxqW
         UpgAtRqb8jattHLn74bzAK0nDqZxGxEx0aE5WAr4gKm7lkoXkDcKPzzDrjRx6rl75e7g
         Iyci4UJ7NTkEEedx+ONZMT/Ai6Uo595hSmTat1Ngxz29JAutJw6K1T1ryJqangBcRyET
         m+7zQckYlOmoFnPYLeh4URnUClBVXS52csRrbdZLC1RlSRDwVptL/Gx9W/UTWMJhDu4A
         7RfKx7fBJz3GsfZbRZLkxb5aBVAb9mOS4juFt+mKSULdqe3qq883xzb4fsxpYvZxQ4W7
         QHSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=uIH/e4pHW4KAOLyC5//wv/9j0SUXvnWRc8ix6RQE/P8=;
        b=Qff509+PIiWtNWE+AA2E1SzG/kNKEGIIXKEz8AKqzieYRQwpKko5sLvlpLDM8gyWqZ
         dl+9IN87ds3dLjHPPTvhzncwj5igeXhqKa2M2i0DZz/RgMIgePKt+3TmJdXN4poVgB9z
         tAEAyNDz+w3G7JmT9EwsKxUYloTSer2+6RuVixJTCan1reRdo2nFgVDScD5vLjTMUfO/
         lFPMn/WQSGFwy28Jtd8N90hojeA55q4tVnxoqejHgMc0yN8ptpjZj0z+Vhb6wyBjyDQJ
         h4dmsmH7ftZ7IKyiS9zN0Uq/t+LoB4Cw8fFFCvERCmIBpNavhEjr2Na6uCYcZqyBWHJ1
         U8Ug==
X-Gm-Message-State: AOAM533Wak5GpPu0f214bnoTqm4ZDSshlto7GHzpc3gth3D3xxHPHBPR
	N3diLD1Y8Ccp21t7kpFUyqc+piXkgxA=
X-Google-Smtp-Source: ABdhPJxCtfprZQ0x5d4CdWZ63hy8gQSe9lgu5teWQ/JnQlk8lqwb3MAilWcJVjmxeD/tgjVg3hNYew==
X-Received: by 2002:a05:620a:623:: with SMTP id 3mr15039309qkv.322.1633443287525;
        Tue, 05 Oct 2021 07:14:47 -0700 (PDT)
Received: from [192.168.2.251] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id l195sm9493302qke.98.2021.10.05.07.14.47
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 07:14:47 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <fe7012b8-f339-c7f3-54d4-09c0fd1795cc@gmail.com>
Date: Tue, 5 Oct 2021 10:14:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAAopBk9+n6aMqQ+n27nezBeXc9AvtT89euJRWHDo39RcfzSLAw@mail.gmail.com>
Content-Language: en-US
Message-ID-Hash: PQWOMFK2WHA3IRRVYMK67FCSKJBNXW4K
X-Message-ID-Hash: PQWOMFK2WHA3IRRVYMK67FCSKJBNXW4K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reset set_start_time of USRP at runtime
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PQWOMFK2WHA3IRRVYMK67FCSKJBNXW4K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0xMC0wNSA0OjE2IGEubS4sIEh1YW5nIFdlaSB3cm90ZToNCj4gSGVsbG8gZ3JvdXAs
DQo+DQo+IEkgYW0gcnVubmluZyBVU1JQIGluIEdSQy4gSSB3b3VsZCBsaWtlIHRoZSBVU1JQIHRv
wqAgc3RvcCBhbmQgcmVzdGFydCANCj4gdHJhbnNtaXNzaW9uIGF0IHNwZWNpZmljIHRpbWVzLiBz
byBJIHdyb3RlIGEgZnVuY3Rpb24gaW4gdGhlIHRvcF9ibG9jayANCj4gY2xhc3MgbGlrZToNCj4g
c2VsZi5zdG9wKCkNCj4gc2VsZi53YWl0KCkNCj4gc2VsZi51c3JwLnNldF9zdGFydF90aW1lKGFu
IGFic29sdXRlIHRpbWUpDQo+IHNlbGYuc3RhcnQoKQ0KPiBJdCBkb2Vzbid0IHdvcmsuIEFsc28g
SSB0cmllZMKgIDEpIGFkZCBjbGVhcl9jb21tbmFkX3RpbWUoKSBhbmQgDQo+IHNldF9jb21tYW5k
X3RpbWUoKSBiZWZvcmU7IDIpIGRpc2Nvbm5lY3QoKSwgc2V0X2NvbW1hbmRfdGltZSgpIGFuZCAN
Cj4gY29ubmVjdCAoKTsgMykgdXNycC5zdG9wKCksIHVzcnAgc3RhcnQoKS4gQWxsIHRoZXNlIG1l
dGhvZHMgZG9uJ3QgbWFrZSANCj4gc3VyZSBVU1JQIHdpbGwgcmVzdGFydCBhdCB0aGUgdGltZSBJ
IHdhbnQuDQo+IElzIHRoZXJlIGFueSBjb21tYW5kIHRoYXQgY2FuIGFjaGlldmUgdGhpcyBwdXJw
b3NlPw0KPg0KPiBUaGFuayB5b3UgdmVyeSBtdWNoIQ0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IFdl
aQ0KPg0KV2hhdCB0aW1lcyBhcmUgeW91IHNldHRpbmc/wqAgSG93IGFyZSB5b3Ugc2V0dGluZyB0
aGUgaW5pdGlhbCB0aW1lIG9uIHRoZSANCmRldmljZT8NCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
