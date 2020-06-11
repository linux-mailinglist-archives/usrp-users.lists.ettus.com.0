Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543A1F6E06
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 21:34:49 +0200 (CEST)
Received: from [::1] (port=51792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjSyM-0006YR-Bm; Thu, 11 Jun 2020 15:34:46 -0400
Received: from mout.gmx.net ([212.227.17.20]:50499)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jjSyI-0006RC-D8
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 15:34:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1591904041;
 bh=B4lK9W7YYbnY9yx9xsbt7Soqrj40ztxGJqMCKzqRfG4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ANkRjwixTFfXETQhIquTbPMhaH1PlvtDYW1Ttv6Gqaybp8Zlz0C6a+g5jQzbKcnnk
 vUPvHBZqvO4Iv+6y87FzjlxdWCeZ8WOuo1Fs6Z9rXN+yMY0+n8iFVsnRXmgOLlJX+0
 f4qYr6/bl6h51KswhLWNJClQ24FW+JeXAJCeQydY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.54.176] ([87.101.54.176]) by web-mail.gmx.net
 (3c-app-gmx-bap40.server.lan [172.19.172.110]) (via HTTP); Thu, 11 Jun 2020
 21:34:01 +0200
MIME-Version: 1.0
Message-ID: <trinity-469b54f5-33c1-4a43-876d-eb07014b9eb2-1591904041140@3c-app-gmx-bap40>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 11 Jun 2020 21:34:01 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAL7q81tN0ESxpuFsOdsRT_T2MgQnB3yy-=YvMoMi5c1wEe+OCQ@mail.gmail.com>
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
 <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
 <CA+JMMq-WJu=uK8jetzZXQvkzMnxQPSf2SJ0p21iS+cNm8Zifhw@mail.gmail.com>
 <trinity-087eaba7-195a-4add-b435-4f9d5b3b1e85-1591837205629@3c-app-gmx-bap13>
 <CAL7q81tN0ESxpuFsOdsRT_T2MgQnB3yy-=YvMoMi5c1wEe+OCQ@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:ja48tHSngbQ0yP9yR6XTTe3ma5hKLGNcOWShVER6wPZqaEg5Wgs3i8n/x/Y6gbFcNwroG
 IiyeVCxjOg2OdT7iHYA1s1Z1fpzA81dkV6UvScM9uLqGFoGNEsZ4G/d1uAQlF3NRUVPNGdmk6YeI
 Yk1CaIxMhEwLjO4pw9QerOY11yKItqY0s7Kg+EgSKzppRF4b7gKcKcm7KoNXnI/Ki45sJpM88pBu
 9RzVmped+vbLCXHwzeo+OBIzqsHQUb5jBevNyKDGVmGK9zjUxbfstAj4MU7RQEZPDt3shk3Gj1M2
 YQ=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PHV7PU0AaLM=:hi71SvzKMd7WR2DVFVGoOL
 Rid7cxN2fv2isbB/3GD8ZRRlL/eW4bLQ94gvFVo/zZlvowY2OIMt01Z5l8b64+2aL0Ptjy4p+
 76xLINAYZXbhs4ZegZ2R0UhUWoRwtkvWlZfkclmWOsrQOqA4u99bEtu693gxTkIuUw7QXYQ0s
 oK5MwjnTWYda2eRKhQqy1B1iJaoqiEdudvPklZidov8qL8RlJ2QpQSceZX2/DN1GO2sSa4C+A
 SMzrix8/yb1mFwpjTo0aTUoHQdMzgRgtadZw64Wa96ExiNQF600r+4dt2E6Fp4P7AOzUy0sQ9
 Q6NDYKpRKU3tnkkKT8Hxw2R991MmQo9ornE0XL2Fa1ks61/CNjEb04HtNH/v4AkmhO5Wc+kqR
 Rmr4SqNuCEtbG4A3L+vQyWDeZy3YdLgap5qcBYaUu23VR41y5cG6cjAVi4QB+Rw5FuCTVlA+m
 WtSgYCOKIuIJf8WoZY9GYicgpkkOa6IrA+sRy6Ywb8RV5X+PYYuyniCaO2zujjWW6qSUvAQn6
 q0Dm3IHcZ7zRJjXuYmTEQDNGwYft5psISdpiuaBgHTw5ZN8vaF4c9aV5EPer2tD+wh/HGKev5
 CJ4sOuPgllQB1Xe3Uhk2J/VjgAwTNKQpj12RqSlucNNGIMDgfC2uwow+hTjgursoLiuJ1u5p9
 ECyjJUwYYkaIvFAm4XeH7ZJCnDdGtqXBT7gdh++l02ElMXEWYI6HwXA7352N3nCSL+Qg=
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Marcus,

> On 06/10/2020 09:00 PM, Lukas Haase via USRP-users wrote:
>> [...]
>> For example, what is the fastest rate I can issue timed commands
>> (ignoring settling times etc) on a X310 over 10Gbe?
> This is actually an ambiguous question.  Do you mean "what is the
> smallest scheduling interval for the commands that will be executed
> in the future?" or "how fast can I issue commands that will
> ultimately be scheduled at a later time?"  In the former, that
> depends on the exact nature of the commands, since they end up
> actually being executed by, for example, an SPI or I2C endpoint,
> which operates very very much slower than a 10GiGe interface.  In the
> latter, my guess is that the FPGA can swallow commands and place them
> on the queue pretty-much as fast as you can issue them over 10GiG.
> How fast you can do that depends very much on your host-side
> environment, network stack, kernel network drivers, kernel latencies,
> etc.

My questions concerns the latter (for now).
Since the FPGA has a (small) finite FIFO for these timed commands I assume*d* there would be a limit on how fast I can send these commands.

Based on Jonathon's answer however, it seems that UHD on the host ensures that it only sends a maximum number of timed commands such that the command queues do not overflow.

But it seems to bring another issue: If UHD holds back these messages too long they will eventually arrive late and (silently) execute non-timed (thereby destroying any coherence the application might require).

I am trying to debug WHY this can happen, why it does NOT happen to the data stream (all data arrives on time!) and what I can do that I ensure my timed commands will execute *on time*.

Thanks,
Lukas







_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
