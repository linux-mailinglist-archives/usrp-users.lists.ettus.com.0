Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB66C72C7
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 23:11:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EB28383F79
	for <lists+usrp-users@lfdr.de>; Thu, 23 Mar 2023 18:11:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679609487; bh=hX08pknNOOjmguPcLMOoGhO+zDlEOyeh1HeqvTjZSmA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oPa/JtXhQgfvm3nAPxddA0I3kKHviWBEc+6xlHg41y4kDZwGvwq+6SDD3npBKsqMQ
	 9CaXjdoAcb+Kde1He4Zn3+wk/7jkcAplSGl1u3iGchboFfFj4WlGXl5F0BdlYoMhSO
	 LSvyaYoXkzHcWwlZaYfg+NWO0nhFMJHy2AiaxPpUK+9GrcQDVJJh6fbRzZTe7i12qM
	 XUsfcuUHvups8p1epUsUWM07J7Muy4xZx0GAX9GhGvnGoNBdNz0VqwK4zJLr2+uufD
	 G3pZWOQa6wClc+JGIqN8rJY0A/K8kBcIqVk0MCkq22MBKFZ+NUdAy0Xev4RjAz6rVX
	 uZoRBnxL1hI6g==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id EF78B383D94
	for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 18:10:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="J1tffBZ/";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id eg48so742625edb.13
        for <usrp-users@lists.ettus.com>; Thu, 23 Mar 2023 15:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679609453;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cEk5cA5fnBHkrYHB6yzadz6Gggbj+L3aUUtohQr/mk4=;
        b=J1tffBZ/pzT3zJ2DQa+YFXht+a16nandEfQ1AuPjJ7D3198r9uIeMxzCSkeFVVdXdQ
         mjfR8PudQ5ql9CbxgvXK7FmE+iQAG3Bq4RAWlWmXvX85d1BCFuG6m6WZ8moD4nAEXPNK
         071hmki0csjaCQ225Tefuwm6R6tWieEey5Dpuk88S6Y/PXTLzWa0OX7Xr/HFYVf1tg99
         tndnvXC8AoEN4piVX7KpmkdXCQUfq2lSlWskXwJYzg6I7vGPqLQii3GYiwGjWYm7tU3z
         qnchrSCeyup43gEuBjYT1EEJDRU6OjYCurw8Sv/V/EbsVCv9E2SnkHOIWVSFEU6bjVFz
         2qMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679609453;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cEk5cA5fnBHkrYHB6yzadz6Gggbj+L3aUUtohQr/mk4=;
        b=5e+J8uLv8yKfAokWWboywEdVr+LmelNZ4bh8Qzr6hjF8JFYO8wDBQzVv/e0ucTkGcG
         FIQjlcUyce59pOPcOv1+BWb6jP/3IERb6qNmUDVjeuXSphYa1edD1D81oyqcjqrxvlPq
         Rh25BEcm+wJZM2UySF6GhosOIOh5u9FFLNuzn1GYPVFi7o77675yhfXhnweBPlxcGZVX
         rYIJuA4zOqHohjefcpL9EDpW0N/to3YGPd0Hnp7wuMADQe34ZC6ycy0HHAlONpFmhbRQ
         5sCi+0iPBTarOaYNFR2W35JLbTrh+wb41XU+kUeXQvebM7+XGrn3+9TfRUscPzKR5tOg
         1Z6w==
X-Gm-Message-State: AAQBX9em2tacmKffHUYWLKA49JNyk/cx3rKXqSix5/xpSC2t7RyXzjg2
	BjckiP/i/ad6E4TooPW9pY778ilsoi4oI66aKc1fGwCso4WGXQ+TAu/UIA==
X-Google-Smtp-Source: AKy350ZvuQZPxnwwgj9nxBaBamYdYrQxL6fNdPXbUO3gq0kVajEsJVdsfW3FiZn8N0Pp4aoWip0S3QjIAafDyHK3ISI=
X-Received: by 2002:a50:d6d6:0:b0:4fb:9735:f915 with SMTP id
 l22-20020a50d6d6000000b004fb9735f915mr423190edj.8.1679609452659; Thu, 23 Mar
 2023 15:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR03MB467893D55A7D1A6137697F48D3879@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB467893D55A7D1A6137697F48D3879@BYAPR03MB4678.namprd03.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 23 Mar 2023 17:10:36 -0500
Message-ID: <CAFche=iLz=nSbcdTgiyRw+-XydH2b0w0CYqvB6QBUPaozesKbw@mail.gmail.com>
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Message-ID-Hash: 2L6SXUBTSV32HYQYMNNAD6N5VRJ6ECIS
X-Message-ID-Hash: 2L6SXUBTSV32HYQYMNNAD6N5VRJ6ECIS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using RAM in a OOT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2L6SXUBTSV32HYQYMNNAD6N5VRJ6ECIS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1016782229780592740=="

--===============1016782229780592740==
Content-Type: multipart/alternative; boundary="000000000000c99ea205f7988c82"

--000000000000c99ea205f7988c82
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lorenzo,

There might be a better way to design the RAM you want. 4096 samples is
only 16 KiB, which you should be able to do with block RAM. Using DRAM
seems like overkill for such a small amount of data. For example, the DRAM
IP itself uses more than 16 KiB of buffers just to talk to the DRAM.

We have two examples that use DRAM: the replay block (rfnoc_block_replay)
and the FIFO block (rfnoc_block_axi_ram_fifo). Generally I recommend using
these blocks as is if possible, since making a custom DRAM block can be a
challenging task. There is a KB on the replay block (
https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4) and a couple of
software examples.

Wade

On Thu, Mar 23, 2023 at 4:28=E2=80=AFPM Minutolo, Lorenzo <minutolo@caltech=
.edu>
wrote:

> Hi All,
> After many unsuccessfull attempts to compile a RFNOC block that uses some
> memory (store and operate on 4096 samples using distributed memory result=
s
> in too many LUT/Slices being used), I am moving toward using the on-board
> RAM. The reference design I am looking into is the replay block.
>
> My questions are:
>
> Does the module axi_dma_master talks by default with the on-board  DRAM?
> or am I looking in the wrong direction?
>
> Is there a more practical example or guide to access the DRAM?
>
> Thanks in advance,
> Lorenzo
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c99ea205f7988c82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Lorenzo,</div><div><br></div><div>There might be a=
 better way to design the RAM you want. 4096 samples is only 16 KiB, which =
you should be able to do with block RAM. Using DRAM seems like overkill for=
 such a small amount of data. For example, the DRAM IP itself uses more tha=
n 16 KiB of buffers just to talk to the DRAM.<br></div><div><br></div><div>=
We have two examples that use DRAM: the replay block (rfnoc_block_replay) a=
nd the FIFO block (rfnoc_block_axi_ram_fifo). Generally I recommend using t=
hese blocks as is if possible, since making a custom DRAM block can be a ch=
allenging task. There is a KB on the replay block (<a href=3D"https://kb.et=
tus.com/Using_the_RFNoC_Replay_Block_in_UHD_4">https://kb.ettus.com/Using_t=
he_RFNoC_Replay_Block_in_UHD_4</a>) and a couple of software examples. <br>=
</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 23, 2023 at 4:28=E2=80=
=AFPM Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" target=
=3D"_blank">minutolo@caltech.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
After many unsuccessfull attempts to compile a RFNOC block that uses some m=
emory (store and operate on 4096 samples using distributed memory results i=
n too many LUT/Slices being used), I am moving toward using the on-board RA=
M. The reference design I am looking
 into is the replay block.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
My questions are:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Does the module=C2=A0axi_dma_master talks by default with the on-board=C2=
=A0 DRAM? or am I looking in the wrong direction?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Is there a more practical example or guide to access the DRAM?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks in advance,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Lorenzo</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000c99ea205f7988c82--

--===============1016782229780592740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1016782229780592740==--
