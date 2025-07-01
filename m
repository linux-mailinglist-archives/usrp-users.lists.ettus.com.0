Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B18DAEFB68
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 16:00:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 613E4386384
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 10:00:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751378436; bh=M/v+PJjELVdRAnVEs9daA1xBqwdt3o8hDF0S1F7L434=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=CpzYCUki6H5Fknh+T02Lr9qAcq2wSRWBMADxwpTyITLOqIYIGMOQywYO+Fif6IvYR
	 SwXrQzlNAEVv1u/x+E1dSF3JylHx+n/vwUe/kP8goy8HSAFluHqJ8Vm3rZjK3Jo3u8
	 9lQyjhbRlsp8WUfqd2ax1nS8jzz7/GmYY/HguvoleeAeTAGeUwCfqYPX47b7oMmYhl
	 I7gcXMLAvzv2peOXX610bCxahfuK5y52DOP9Z0/H4GPmcTP2SXejqJH2BNscz7RvoC
	 KomWnIglyX3qmK9Q5voahV0QwEj9F/gG62VYNUm/ipXVuIduhm2pe3MbcYxplXyQZn
	 z50lAMULNq63Q==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 572BA385D73
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 10:00:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ndh6ozmd";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60c3aafae23so14583613a12.1
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 07:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751378418; x=1751983218; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Gz1w9zr0YamK+ku+LNCI4L+k6ZONlRXS+DDPqKv4Ui8=;
        b=ndh6ozmdj1JuBEziUvY30qt0ZV7+UnLBzyg1/upjZG4Q+7XKnOi2O4yyCN3uYD0pWx
         Yayb+i8noD9nuzFW+MrRh7p/5ju9MXYAiTKlaoXtSTxf5RgEf6L3VrS5wHwTejHm1jm3
         7WZvtTbdLpZcgzFGQD8nE08IdZvnuuyYxGOrNHJ4C71Ie6b4e+1yN7mW0qGWd4drl088
         Kq3sGpab4M7ZOSTqF1wzRqmpgiGpWS79NZTf9ZugyXsFiI1+VMG+e+zCuACwt9HrGqZ2
         9qKBFXE7F7XJBkGJ+d6VcRP87WcCU1l6Tjkygz+v/96p99IkFn1DyhwmMugY2s+Ifo5d
         2eEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751378418; x=1751983218;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gz1w9zr0YamK+ku+LNCI4L+k6ZONlRXS+DDPqKv4Ui8=;
        b=JnjxOcFbw3qmwExhrbSEdPgEQx03HrgQjjun27Z+BrFYtdQb218GjUd8GVpXt5/bCG
         09CGJlHa8FuncKdkIlraXUGKOBTAmRwVNTAreoDl4WqplPqzBs9HjJ8hqNRGV2La99De
         oMmmgVPfjfFXxxJSxbPDAFFUxUJA2kedGp/1lIFEB0QsrqrE7lDqI4LID9LMO57MQcGe
         XYX4Sg5g6suv3UOFr+xkjvVDjYClCsnTijSd+IQOfo7N0+QWvXigmtNCbxZ22jF5S9Ee
         Qwy0itzJqbba3m4lvOssPiGwWUaZWhzxRhkLPcRi9ZQdVXHNiTB5wqekU5IV+NERAmfl
         cr+w==
X-Gm-Message-State: AOJu0Yz+T0X/Rvl1vrMUT7j6PWpb0w00k9F2atGIrbADjTI96RGt+FHJ
	FZTO5RM8sM6JiJPxwxr8wXy7qP+OgltyDabMc5N2m8yoRxz4ytPgH7pTy7ga+ekUM8Ra2xqLopK
	LbJjhIPhN8898J2FIqqR7RSbSqptAGTrc1Q==
X-Gm-Gg: ASbGncu27rJgG8TxM7vN9DqHVUGZ1nQUJzmQsBfX7CwGuBH/CYMgQur6kymDz6pG7Fs
	vlCdwdQdMXqLPP+yXPlU2/bxwAm5AsF6PGpay0eXTYCHkdm0KXx5pn7kWx/ZIDrseZexODYeRYf
	bZxB5+swBKB+GWbQE+J49ukIiPCUy1RqZ0TYYXB9M1iUQ=
X-Google-Smtp-Source: AGHT+IGz/fzYaDrkaaNuLu2PF4GIOP/rWrzO6UKL91tuJ58c9ftQm9JHMH5wFHSf5WzHSdRdHXvyoT/ICihoSwRuf+c=
X-Received: by 2002:a17:907:da7:b0:ae0:a464:99d with SMTP id
 a640c23a62f3a-ae3aa28c14bmr395124066b.17.1751378417875; Tue, 01 Jul 2025
 07:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK7tEQFgKsgpRtnMJgXdgqk-76QARN5UcSuX3W=DnfJ+4g@mail.gmail.com>
 <CAFOi1A4bPd1GteLucC=9XNF_aTmjgkJJKc1qvZvd7C-RYMF2Tg@mail.gmail.com>
In-Reply-To: <CAFOi1A4bPd1GteLucC=9XNF_aTmjgkJJKc1qvZvd7C-RYMF2Tg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 1 Jul 2025 10:00:05 -0400
X-Gm-Features: Ac12FXyvNzcO54eEtgmpKf-D3WOfzGhTcE4CeUm77bw7IjUY7yRopV7RCJel2Co
Message-ID: <CAEXYVK4fyg3zMWAYt+2DW=JyzXehdA06vdPMb+-Koc6KLA-JkQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 6VNA3WOWPEQ7QFWQ5SUGK356ABRLXQYS
X-Message-ID-Hash: 6VNA3WOWPEQ7QFWQ5SUGK356ABRLXQYS
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Inconsistent Behavior Based on Host (X440)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6VNA3WOWPEQ7QFWQ5SUGK356ABRLXQYS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4539568610600923291=="

--===============4539568610600923291==
Content-Type: multipart/alternative; boundary="00000000000077039c0638de908e"

--00000000000077039c0638de908e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Martin,

On Tue, Jul 1, 2025 at 8:47=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hey Brian,
>
> sorry for leaving this thread dangling so long. Did you figure something
> out? This behaviour does indeed sound weird.
>

Unfortunately I ended up moving on. I noted it as something to look at
later, but the main use case is to receive samples over QSFP+ and only set
up the RFNoC graph with the arm, so it isn't a showstopper.

When I get the base functionality completed, I'll go back and hopefully
remember to post back to this thread.

Thanks,
Brian

--00000000000077039c0638de908e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hey Martin,</div><br><div class=3D"gmail_=
quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Jul 1, 2025 at 8:47=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.br=
aun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey Brian,</div>=
<div><br></div><div>sorry for leaving this thread dangling so long. Did you=
 figure something out? This behaviour does indeed sound weird.</div></div><=
/blockquote><div><br></div><div>Unfortunately I ended up moving on. I noted=
 it as something to look at later, but the main use case is to receive samp=
les over QSFP+ and only set up the RFNoC graph with the arm, so it isn&#39;=
t a showstopper.</div><div><br></div><div>When I get the base functionality=
 completed, I&#39;ll go back and hopefully remember to post back to this th=
read.</div><div><br></div><div>Thanks,</div><div>Brian</div></div></div>

--00000000000077039c0638de908e--

--===============4539568610600923291==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4539568610600923291==--
