Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C699B7CB563
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 23:42:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 159D73868DB
	for <lists+usrp-users@lfdr.de>; Mon, 16 Oct 2023 17:42:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1697492543; bh=0qB5dLQubhB9ILrFkgGth2dYy2wAmUtQ1f2HrBwp+TM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nASX9vqAWEI4VBoaNZvZxKb0nIuJGL6JNBoe5kg+REqK2RQnRpautGarbPnmwfdai
	 SVhh4X4+m0Ad7ZpKYR3ANkR1HlktOpgppZODQJWNqWZCfts3rj6Opg4+kWuMD76hsY
	 /tcjXWVFz7VBzeMRkkhP0v1pNilnhsEZ4qtFkpniwrn112OVFbxvTLsKqqbPJt9ReX
	 fRQMM1UqUlB/Cfkn99MlXnRTUKvMvmbvREd3QGcgZxCs8Rwt73kYk1OF8+4DZ87bgD
	 yHa8rO6Q5iZWC1K76JLmDXoYpqTYe9U0Hsp5jBB+LRt83gjrtHmzaTi6Volr9+NuWS
	 jRJ17z+0icZHw==
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 412DE385E61
	for <usrp-users@lists.ettus.com>; Mon, 16 Oct 2023 17:41:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jbjOtMNB";
	dkim-atps=neutral
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-7b65004396fso1225280241.3
        for <usrp-users@lists.ettus.com>; Mon, 16 Oct 2023 14:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697492495; x=1698097295; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TBo6H7T4VM7BZ4UEvTMtUF/4IlITNF8vg0atYPuBENE=;
        b=jbjOtMNBC09XF6MoL/kSarFYPct6sH2Rwhl2Z6fYoPmdjDJrhA20ocrrwTuMkE5XAI
         sKc4CK/S/y2r0Hf699DvaWGHiRgpeGpuVPy35O6MsoWlGxsEqr6LkWl2DTe/3D9fzWzm
         9nJYbHTWIeHkTniPjLkzxd+qrF1ZNDBaSbkzCvmA2N43l0nSYswg7O6NEaP4LHQBX1Ob
         FKyVfyX4rGPTnDNUunBh3VzfBaQ2ZH2rHIsNmtXUMupeTJeI8hc/TkuV19VFt987IoQQ
         6Siv1PyxLBX3Gt0z9+LNt1CT/FP5f1aTBRCeWUXYM97A4OHNpOhC35Of8DDue5AB0xuE
         S3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697492495; x=1698097295;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TBo6H7T4VM7BZ4UEvTMtUF/4IlITNF8vg0atYPuBENE=;
        b=QZkQexL0PlQbqiC3h9ZWhtoegnziDGAWqyI0MBn50Gqr5ZriAtoOLB/urIZasvyacn
         7/iW64Mtt+r/81KdwZF3F4UF26zwBwBu/A+1d5/JdRiIwcylst1xs0ku/Yl0RKFVuqkn
         ZjGjzPDxzNb7eVPHez6XIx1o/FOQf1FkWx7ob1YzyosXeJ2rkcqrwG+cDpC9o2fILQC3
         JfM/z0QqyyMbFV+l3bNBLiZSkYXoz4S+KK3n/cDWwYWe4AoP0ad7mlK0M1lS+EkXNbhc
         iPC5+hh7haB0cS+JizjcvuTS3mB5mrb58wNUNQSAcadggnwumX5JB4zStjmCKRM0OYsf
         t4WA==
X-Gm-Message-State: AOJu0YxWeAI46TsdTABr33mJOwCqAV/bnSp5eoVF5guY82TGJu6bbsBj
	ldVsB9Q9biOTDqVUdL4+KFOcjQSKNrM=
X-Google-Smtp-Source: AGHT+IGhKPpDJ40xWhHQTD3wmDJeEJtKEGDomzYTvgCjVavm6N9ZYBxQ0RDv8iS8ITNgj/QbGYzf2A==
X-Received: by 2002:a67:a644:0:b0:44e:8353:e86a with SMTP id r4-20020a67a644000000b0044e8353e86amr548273vsh.24.1697492495354;
        Mon, 16 Oct 2023 14:41:35 -0700 (PDT)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-06-174-88-54-173.dsl.bell.ca. [174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id i25-20020ac87659000000b0041812703b7esm84065qtr.52.2023.10.16.14.41.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 14:41:35 -0700 (PDT)
Message-ID: <f0b0867c-b07c-4d67-b1d0-f6036ea67b10@gmail.com>
Date: Mon, 16 Oct 2023 17:41:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cff7659f-bcde-49eb-a71f-e3153570e8b9@gsi.de>
 <a6805b3d-4945-4474-83e3-ee7d5e82b3a9@gsi.de>
 <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSF2GcGoM83Z704+mivoL8mpVEEQV8b=cZXtwEjbB+EiQ@mail.gmail.com>
Message-ID-Hash: VXTO3IQO2M57VLR2V7T5OZ6VAJABJUPH
X-Message-ID-Hash: VXTO3IQO2M57VLR2V7T5OZ6VAJABJUPH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Loopback with stream from host
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VXTO3IQO2M57VLR2V7T5OZ6VAJABJUPH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMTYvMTAvMjAyMyAxNzozMSwgUm9iIEtvc3NsZXIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6DQo+
IEhpIFBoaWxpcHAsDQo+IDEuIERlbGF5aW5nwqB0aGUgUnggUmFkaW8gc3RhcnQgdGltZSBzaG91
bGQgYmUgcmVsYXRpdmVseSBlYXN5IHRvIGRvLiANCj4gV2hpbGUgSSBkb24ndCBrbm93IGhvdyB0
byBkbyB0aGlzIGZyb20gZ251cmFkaW8sIEkgZG8gaXQgYWxsIHRoZSB0aW1lIA0KPiB1c2luZyBV
SEQgZnJvbSBDKysuwqAgUGVyaGFwcyB5b3Ugd2lsbCBoYXZlIHRvIG1vZGlmeSB0aGUgR1JDIGdl
bmVyYXRlZCANCj4gcHl0aG9uIHRvIGRvIGl0IHJhdGhlciB0aGFuIGRvIGl0IGZyb20gR1JDIC0g
bm90IHJlYWxseSBzdXJlLg0KVGhlIG11bHRpX3VzcnAgVUhEICJzaW5rIiBpbiBHbnUgUmFkaW8g
aGFzIGEgInN0YXJ0IHRpbWUiIHBhcmFtZXRlci7CoCANCkJ1dCBJJ20gbm90IHN1cmUgaG93IHRo
aXMgd29ya3Mgd2hlbiB5b3UncmUgdXNpbmcgUkZOb0MNCiDCoCBmcm9tIHdpdGhpbiBHbnUgUmFk
aW8uDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
