Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7946F077F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 16:32:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0BA93842A9
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 10:32:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682605933; bh=HrLGfHRnGJX6GX7E6y5Ra6ziDuQEH6CmjT0P8Zo9a10=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Sb5bpoleZa+O2ReC3UaR8Oqpc+hG8BgtmeONzI8amZBfMhLI35mQUW9ABVIs6lMwm
	 8bneHj6ETGiqePjvBMzwaBPMaKiMROHFjmrwU9rwzMUf8k43rHaaDoideC61X+NY1Y
	 4Md4wdRlVzlQTPbCxjQK+NgaYkgC3RvBe26uvcAbshJO9zHoAoqxIwDV0LGtPczh7H
	 518A0odFj8gQupvoKQ8K3X0IYIsc0Sdjcdz2S7DtlvMIJEBMyFlYVvLfx3sVWpKd+V
	 7Qiq24CzIKQ+v+X0bipfnNTMf7Qg3B8j6oE8bYZdwoA+bBePX9nvoBxKWA8QYlhx3b
	 UDppGWIP5CU8w==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D59203844AD
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:31:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dYGJAZ3P";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-b99489836aaso5811246276.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 07:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682605888; x=1685197888;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xHpf3d/XgF33GQeNqeAmJhEzVmsYgqsCtZhg0LJ6oPk=;
        b=dYGJAZ3PWglnBnNDygNmGqyYGc281VJUKQLwXhPxVozvkaaUtHNKc7CTHFq1IH1Lxx
         96BQOca9biPiVwXtRQ8EozgxEJ1LgnHaWIQMpkh3NqzzN59SBCno38KT6oxlUcvvKtX4
         CdPCtFXwe39Wu0/RsfYPMV5AwK8L0ZeUN3l+mrfO3jfRUXN33QERFIonv/NpmbhCvP4B
         9PbzPhWwdKPCL3Epdn4mcMOJDFx6kzv2mcRmb2NDrgfw3THDuaYftrGW6olxBbQy3k/U
         6lBsWzlTiNkmA7S5wQ1kktzXkwiE0xwT8yeU1ye1XlTzTE9GOGgzj88ONG344IEhErxa
         BpWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682605888; x=1685197888;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xHpf3d/XgF33GQeNqeAmJhEzVmsYgqsCtZhg0LJ6oPk=;
        b=htXdO8lde66bxVLQBYdUkvV8ZxpASKbHuiYQnafuZMDm84YehDwii7nrPO2/olWVT/
         6oK+dc4yALG9OLLta4MmwXXRhGWzyJAhPsscUQ+LOzkSBb+y3Vpsy9Tw8NGW8Kk4rLDy
         1CeBiym1UcsuhYmAJFHsaXy76jAy6liR64B3T20tSl//3vuUwk+lRKnrp72FTaxknWC6
         jpVK74V/6rVJYFkgz2eWe4oKQsgNadaA1ICXYe9XlvADRW+EXuCoG2QvBV6zO4Se4443
         r8a8hJR8hzGr3iHPCoqvczgPM/UNax6Gkn3jT2HmNae/oxZ68aK+BUw0gwRhIckVku90
         n5Jw==
X-Gm-Message-State: AC+VfDw4qrCtDvBma1GD/sIBtQo6Kz+cFW/yooXE309AcXTOMXTfL456
	50CpCCa8IGMYxHnjywCEFrjh8T/bT/s=
X-Google-Smtp-Source: ACHHUZ4fEcATXlL6Yu3AVk6ISIfz8kcL6dIQ27jBRtYb/G1ytDE5ndL2f6X0pqptnDlGnh4bGVga3w==
X-Received: by 2002:a25:d601:0:b0:b8b:dd05:b60 with SMTP id n1-20020a25d601000000b00b8bdd050b60mr1166801ybg.45.1682605888063;
        Thu, 27 Apr 2023 07:31:28 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id j15-20020a37ef0f000000b007468bf8362esm5940641qkk.66.2023.04.27.07.31.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 07:31:27 -0700 (PDT)
Message-ID: <8027c8e1-62a3-04bf-69a1-914037dcaf6c@gmail.com>
Date: Thu, 27 Apr 2023 10:31:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Sur3Om42XkRJ9jnH0oz5kDxfr5MyBBoQRzUyBXQiPs@lists.ettus.com>
Message-ID-Hash: SGEHWWMCARIWRAZGZBT5SNP2HPARTBYD
X-Message-ID-Hash: SGEHWWMCARIWRAZGZBT5SNP2HPARTBYD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SGEHWWMCARIWRAZGZBT5SNP2HPARTBYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 27/04/2023 09:43, jmaloyan@umass.edu wrote:
>
> uhd_usrp_probe --args addr=192.168.1.151 successfully probes the n321
>
> uhd_usrp_probe --args addr=192.168.20.2(or192.168.10.2) does not 
> successfully probe the n321
>
>
OK, so, when streaming with an N320/N321, you have to use "mgmt_addr" as 
well as "addr" for streaming:


"addr=192.168.10.2,mgmt_addr=192.168.1.151"


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
