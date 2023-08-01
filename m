Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 147F676B83A
	for <lists+usrp-users@lfdr.de>; Tue,  1 Aug 2023 17:08:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBB10380F47
	for <lists+usrp-users@lfdr.de>; Tue,  1 Aug 2023 11:08:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690902521; bh=76P0qptAGcc4S9pju20sEaPTYSTxbThh4rSOzN39nfM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Nyzs4DP/6Sgpqb5TyHabANa2NrhHsk4IGs1/IefrlU5AuzvN0njbXsVIGRkv/kwA/
	 zGtrN5u5muwNRf8WYjdck1xG57gy5OanbuZbvD6dV1JMRNWMDTJ/fsm3paxJofu+8v
	 CY2l7qpTJwg3W83tnfIJ00hNL9JedHKlPw96/sMX6LEj90Y/DqTLk0p3bjNwcgD696
	 ZB7tdnaWveXNbGII0L5tOKgRDoKPXCTO34dt1Kx0njV6LhKdk26fNUEXd1btzMMMs+
	 GvBbc/nrblm03TSO9SXnG5C14zUqiiv5qEIbj5KV39jBwJIFVwSRzBAKQKHSW4UYOG
	 rd1/aPhGO8bmg==
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id DC744380EE5
	for <usrp-users@lists.ettus.com>; Tue,  1 Aug 2023 11:08:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iD3vSbeX";
	dkim-atps=neutral
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3175d5ca8dbso5144413f8f.2
        for <usrp-users@lists.ettus.com>; Tue, 01 Aug 2023 08:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690902485; x=1691507285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y3U5MD31awT+30RSRHsnEVfOp1KClhFxvn8+se2HcV8=;
        b=iD3vSbeX6DWczQXC2qfcgAUKhGDw5ueyvFnM/1E7l2yJTj+zOhkV+e+TBNlx9EAsrc
         nV1xBL8CWv6TMQIABozsUGztk8Rslte4jFpJiTwhxEdE97whzsAie/N7e4VO8sTgdFBI
         L4picziAXKHh5ovteGbe26rCvTA50nS8CPealQOh/IH1XN/T8fALnv/KuXf4QGsgj5k3
         hQbIriLhLGMy0//SEfnigWkDOy4+kwnU6lGQWJkt7RFi55qPlYtVOqdcmr+U7B31/Gcz
         rqG2q5sFDZW4+Ld0+FAuGqlSVqSZFG9XcZvozd+NXVY+ZoFuJ1h0AOxWU9XIp81fZpMQ
         yeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690902485; x=1691507285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y3U5MD31awT+30RSRHsnEVfOp1KClhFxvn8+se2HcV8=;
        b=aIIyNENYwhjDN9TREIbywJPgghMOaiP6JcIoG5FTpGp1m3Hwb1Dt4b2SriSTyWRU0j
         CQnhjLYuzPamvvPX6uPZKvCusFclNyQw0jhEJ6rYM4qWolTCTa4zw9UwoL2raLUrn33S
         QUovl4Vs05JY/gmqdHqx80FEFci/mWxKmtKblvHJxPK6TbSoFN9lqyxAi5BIbSA6gSrn
         sPTqrkyYJWjonVQ1vCJaqRBjOSu9p5UHZwmFkPS91AxJ9RzuSQRql8Fl8iPK/yKWIZSI
         0St1gsueZ+LSHf1eC+HUoufJZ7gEtP6qp8ncITX+u8K8t1Fn1EN1qZNOy4PFbnE7QQho
         /gaA==
X-Gm-Message-State: ABy/qLbnmnQXRWqyRb/x17br6piTZXxNAOsBMQ3iCacQVl2Aqh0MU0uC
	XkGre56QJ+VxHtt12vWRGUN4pgatrgc1kOBFzaPrPGJny1I=
X-Google-Smtp-Source: APBJJlHHn01KdpgLhe6ZjetEUtXF0Kq3WLmlMQWWA/Hh5uo3TVoQhNbCSkyFM5p1dJmZO0KU0BmxY/PSvkd+1u98zAA=
X-Received: by 2002:a5d:5487:0:b0:317:5e58:3fd with SMTP id
 h7-20020a5d5487000000b003175e5803fdmr2409645wrv.47.1690902484447; Tue, 01 Aug
 2023 08:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PukEo+LB8GMF9xM_geYJowDky32pY7FN3+v7qNyjGGXZg@mail.gmail.com>
In-Reply-To: <CAA=S3PukEo+LB8GMF9xM_geYJowDky32pY7FN3+v7qNyjGGXZg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 1 Aug 2023 11:07:53 -0400
Message-ID: <CAEXYVK6Y1Rd=FSb36aJ__pY3W8Fa=9s1_SP=iefWxf096D_Hyw@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: AX4KN3I34Y77XDXRKKT7ONN365VJQ6P3
X-Message-ID-Hash: AX4KN3I34Y77XDXRKKT7ONN365VJQ6P3
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to run multiple jobs in rfnoc image build for usrp with xilinx....
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AX4KN3I34Y77XDXRKKT7ONN365VJQ6P3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5391978863838608419=="

--===============5391978863838608419==
Content-Type: multipart/alternative; boundary="000000000000ef74f60601dde9c9"

--000000000000ef74f60601dde9c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 1, 2023 at 4:20=E2=80=AFAM sp <stackprogramer@gmail.com> wrote:

> in xilinx vivado and ise design suite in gui project when i want to build
> project there is a option that we can select number of jobs for builds
> how can we set number of job for building rfnoc blocks and image of usrp
> ????
> for building we use rfnoc image builder but i can not see any number of
> jobs for xilinx vivado build?
> can any one guide me?
> thanks in advance
>
> rfnoc_image_builder --help
> usage: rfnoc_image_builder [-h] (-y YAML_CONFIG | -r GRC_CONFIG) [-F
> FPGA_DIR]
>                            [-o IMAGE_CORE_OUTPUT] [-x ROUTER_HEX_OUTPUT]
>                            [-I INCLUDE_DIR] [-b GRC_BLOCKS] [-l LOG_LEVEL=
]
>                            [--generate-only] [-d DEVICE] [-n
> IMAGE_CORE_NAME]
>                            [-t TARGET] [-g] [-c] [-p VIVADO_PATH]
>

You'll probably want to play with the Vivado settings from here:


https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/tools/scripts/v=
iv_utils.tcl#L44

I think set_param general.maxThreads might be the command to use - but you
won't find anything on the command line.

Brian

--000000000000ef74f60601dde9c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 1, 2023 at 4:20=E2=80=AFAM sp &lt=
;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>in xilinx vivado and ise design suite in gui project when i=
 want to build project there is a option that we can select number of jobs =
for builds=C2=A0</div><div>how can we set number of job for building rfnoc =
blocks and image of usrp ????</div><div>for building we use rfnoc image bui=
lder but i can not see any number of jobs for xilinx vivado build?</div><di=
v>can any one guide me?</div><div>thanks in advance</div><div><br></div><di=
v>rfnoc_image_builder --help<br>usage: rfnoc_image_builder [-h] (-y YAML_CO=
NFIG | -r GRC_CONFIG) [-F FPGA_DIR]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-o IMAGE_COR=
E_OUTPUT] [-x ROUTER_HEX_OUTPUT]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-I INCLUDE_DIR]=
 [-b GRC_BLOCKS] [-l LOG_LEVEL]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[--generate-only=
] [-d DEVICE] [-n IMAGE_CORE_NAME]<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[-t TARGET] [=
-g] [-c] [-p VIVADO_PATH]<br></div></div></blockquote><div><br></div><div>Y=
ou&#39;ll probably want to play with the Vivado settings from here:</div><d=
iv><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/fpga/usrp3/tools/scripts/viv_utils.tcl#L44">https://github.c=
om/EttusResearch/uhd/blob/master/fpga/usrp3/tools/scripts/viv_utils.tcl#L44=
</a></div><div><br></div><div>I think set_param general.maxThreads might be=
 the command to use - but you won&#39;t find anything on the command line.<=
/div><div><br></div><div>Brian</div></div></div>

--000000000000ef74f60601dde9c9--

--===============5391978863838608419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5391978863838608419==--
