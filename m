Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE3F6E25C1
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 16:30:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBC78381372
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 10:30:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681482647; bh=5/FCXg2NZ0lvQVbuDTlaDVTpZGOFEyJxfP/sdMuzR6w=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Hvp93YVB3d7WNaIZTSEc+hxQOBDEU63VJBwmeumftUCeVLoW9OZUCYgmNTdTMNr5o
	 +95OS+IwGwtllpynKvtFZkQ+SohgV6gWsD8Z26Yo+t5U17jdvHioQ8xBDbFLt1if9F
	 pwAx8t+wj12jxyjNVgSt6O+toMeDHyWwlFH0fGmH/T9zCdh4SoWRuNUzvqMeCPpDpL
	 n/RDTVdFYnQghdfZOkh0ppr1Eg6boPz6IxdHJyIxy9gUEmuXRu6PU9QayMtOHN+hK+
	 Of1XdDfhzeMhsJ9hHrv8ahst7Ilh4yc8qvjVAdFtaFHpyNexZvXw9pG+UUDdo7WB6n
	 bo7FeoEavxNbw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 30C50381372
	for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 10:30:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZEiOiRUA";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id fy21so3079321ejb.9
        for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 07:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1681482614; x=1684074614;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wHv1SU8lJMnEpSfeUDOq5o/ioOtQYhpPAXS2pgAIM40=;
        b=ZEiOiRUADaaVaCvZvOYlqkMgC8I3T/24ehinIN6rI3VCX82MHE4/P3lc4jMXXzKkwr
         fu14/nx9E/DByrgvf5fia6imWcE5653Ak1j8lU7ZxjNfA3SB+Dn/6wE/yoqkynIU7y0g
         NxfHwIJP1MSpolWt4033Q8aD6rsBVqkY9Inb6775DsJ64iayc6Gv8TrCYCQfltRoeLrK
         zmIvZVG76WG0wr9MBXepET0gNYkwZz2/FVEBAaTC4OG6qPtdascmgw3aW87lA0UtHBDW
         66DvnlToc02n0AnW4n3hl3HQA00HULU1VatxE0K5nFHZym7bGJgealSF/TNaqN0t5r8x
         0Rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681482614; x=1684074614;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wHv1SU8lJMnEpSfeUDOq5o/ioOtQYhpPAXS2pgAIM40=;
        b=SNH2XVQ09rTEfxP07VyLaEPSd9jhJVhu2IBVtBaLyTzQhHUj9F+3/daWYhoiinSY82
         o9QGVH2n/rGvhTKJlbxbO0Ji8WLQu+xV+LYWc4QjxdxN4pPNwtHDMqdDIzcP8C9Ir5qq
         hGQYgWfC1+SPVzWZ1vYwrYE3l/3Jui3NdeJ2NcQGgJ+cZLqxWPPrg9Fp1tgOkLkJdUsc
         EjWf+LcqaQ08/oKT5LS3lYrIIu2MEvlpMgn8YDsXrGRMOmCxf5PqazpJv5RD8Hi2d8lA
         X8qEKDnlt6N7aHlZhBn6A1diK3lTaNzWR2IKmvBqEzjZXTqVwpzBiYJ9QSP39H7CzEpR
         WTUg==
X-Gm-Message-State: AAQBX9d10xf7bQQk1KXTVuv7ev/m5d+aazOkjbc+s1Y0EHZVTL67nLAL
	DI8jCsZsVYIOwoRH+FSq+Mz4Cp/BXevfysDYhuAruw==
X-Google-Smtp-Source: AKy350aVWTZgNNMTyvIdN73Uqij60sYgLftmAkRM0JJia+aV58F3LcTvXAKceOBfR//PHSA0szTpePTungeb5GNCwkk=
X-Received: by 2002:a17:906:b2cb:b0:94e:eb42:2a76 with SMTP id
 cf11-20020a170906b2cb00b0094eeb422a76mr867578ejb.6.1681482613623; Fri, 14 Apr
 2023 07:30:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com> <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com> <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com> <20230413225129.0E1C84D94B@mail.futurelabusa.com>
 <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com> <CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmail.com>
 <0d43a8a6-f7a7-811b-14bd-42e2981a5957@gmail.com>
In-Reply-To: <0d43a8a6-f7a7-811b-14bd-42e2981a5957@gmail.com>
Date: Fri, 14 Apr 2023 10:30:02 -0400
Message-ID: <CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: H2KVQ2SEBRBCJ2HTYP3XOPYVGFLH6FQX
X-Message-ID-Hash: H2KVQ2SEBRBCJ2HTYP3XOPYVGFLH6FQX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jim Schatzman <james.schatzman@futurelabusa.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H2KVQ2SEBRBCJ2HTYP3XOPYVGFLH6FQX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2558858527240981605=="

--===============2558858527240981605==
Content-Type: multipart/alternative; boundary="000000000000e25bda05f94cadae"

--000000000000e25bda05f94cadae
Content-Type: text/plain; charset="UTF-8"

>
>
> One of the things that puzzles me is that 12.5Msps just isn't that high a
> streaming rate, in fact it's totally supported over
>   a *1* GBit interface.
>
> At 12.5Msps, that buffer fills(drains) in about 2.5ms.   There's plenty of
> buffering on the host to buffer application scheduling
>   issues, so I don't know where these underruns would be coming from.
>
> I don't really know what the OS does in terms of "transmit" buffering (I'm
slightly more confident on the OS behavior for the receive packets). I can
say that avoiding "U" has always been harder for me than avoiding "O".  My
concern is that the OS is not doing much of any buffering on the Tx side
(perhaps none) such that if things pause for the 2.5ms you mentioned, then
"U" occurs.

But, one more comment about incorporating the DRAM fifo: I noticed that
Ettus has a BIST image that uses this FIFO for the N310 (see here
<https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n310_bist_image_core.yml>).
So, this would be a great example to use for creating a custom image.
Rob

--000000000000e25bda05f94cadae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div><blockquote type=3D"cite"><br>
    </blockquote>
    One of the things that puzzles me is that 12.5Msps just isn&#39;t that
    high a streaming rate, in fact it&#39;s totally supported over<br>
    =C2=A0 a *1* GBit interface.<br>
    <br>
    At 12.5Msps, that buffer fills(drains) in about 2.5ms. =C2=A0 There&#39=
;s
    plenty of buffering on the host to buffer application scheduling<br>
    =C2=A0 issues, so I don&#39;t know where these underruns would be comin=
g
    from.<br><br></div></blockquote><div>I don&#39;t really know what the O=
S does in terms of &quot;transmit&quot; buffering (I&#39;m slightly more co=
nfident on the OS behavior for the receive packets). I can say that avoidin=
g &quot;U&quot; has always been harder for me than avoiding &quot;O&quot;.=
=C2=A0 My concern is that the OS is not doing much of any buffering on the =
Tx side (perhaps none) such that if things pause for the 2.5ms you mentione=
d, then &quot;U&quot; occurs.</div><div><br></div><div>But, one more commen=
t about incorporating the DRAM fifo: I noticed that Ettus has a BIST image =
that uses=C2=A0this FIFO for the N310 (see <a href=3D"https://github.com/Et=
tusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n310_bist_image_core.yml">h=
ere</a>). So, this would be a great example to use for creating a custom im=
age.</div><div>Rob</div></div></div>

--000000000000e25bda05f94cadae--

--===============2558858527240981605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2558858527240981605==--
