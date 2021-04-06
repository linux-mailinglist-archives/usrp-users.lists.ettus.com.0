Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB59355F1C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Apr 2021 00:54:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC007383E8B
	for <lists+usrp-users@lfdr.de>; Tue,  6 Apr 2021 18:54:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="hdIMYS0U";
	dkim-atps=neutral
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 544F6383D40
	for <usrp-users@lists.ettus.com>; Tue,  6 Apr 2021 18:53:45 -0400 (EDT)
Received: by mail-ot1-f53.google.com with SMTP id s16-20020a0568301490b02901b83efc84a0so7317435otq.10
        for <usrp-users@lists.ettus.com>; Tue, 06 Apr 2021 15:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=exxihEKR7u4phsWcYYxquHYM+MweBoY0CDGFR8ulmB4=;
        b=hdIMYS0UggvfZFpHv/aNRckuBGyDvPG7TrjC45iU1OoW/SRw5lolQwF+2WZBc7qfqL
         rjNvhtJWL9+4a0RxVruT5f/fHUhzyi/Ua4Dq7LlStARU12e1xc/FM6OJ7LmRWFNmxs8y
         AqmWQ9HmSNn9zEXIP/DFxEkA+9hKVgzqoOBJDY1rKBzot1Us9ootV1oTO2CcLsrQNY20
         9khZteSi7CJ1SD+PEMWxZl3tA4SmjZd4rnwbpzrosN/iiY5J65toHMUR2aL7Mc+Lr77Y
         7um8DQkXM4W+QLqFkil8rS4zTL0q/X0KU+GZEIa08egSF0ztZrBZU31dCABqRHzg9ZRl
         TjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=exxihEKR7u4phsWcYYxquHYM+MweBoY0CDGFR8ulmB4=;
        b=EjyrGpfyH5+vIN1TH82oSEzgHgc7dLYpom9kk92GIkuwzkJmikX+2WRZsoVJdSiZzf
         9Hl/cKG6bF7ss95Floc/n0bJCDq6hlp8jSGVLMP4MhpXa7HlyixH28H9kKdc4ojFyqbv
         DoKu5eWwTG8vlKrszazdhEG6RRoDIkLzABOKPmm06jvEaE/eOg2ltUklCCsmRQaxGJaB
         rUGSplHP3vt2a1b8DM0vQiYGjxKP3wJQXSkUYJIw2dL8Je9LL7NUhSZUYnmoRxYNrgjN
         lyca+iegL+OqPl1ZsnKrVGwdf3II1ZBVJxVExZSw64dwGl9ma0bw8689TRzmGO7gnVDG
         jvBA==
X-Gm-Message-State: AOAM533dR9zQsPbupcn1RJGisAT9HCJY/dW0VQCb9/OrVXSxdYEEmW4q
	XraDt5ePFcLJyCa5SEqWm24pb3X20m4hO0LcUc6jXiGIXjQn6g==
X-Google-Smtp-Source: ABdhPJxudx7h7555p3csMApEDohLHAi2r7+vqD31QtesLvBUdt6C4H5PKQeoFd9B7kBJyknak2EJQ7RQb5mNqC8I8ZY=
X-Received: by 2002:a9d:4049:: with SMTP id o9mr362287oti.58.1617749624480;
 Tue, 06 Apr 2021 15:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210406164020.jdcuvfofw6s2td4p@barbe>
In-Reply-To: <20210406164020.jdcuvfofw6s2td4p@barbe>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 6 Apr 2021 18:53:33 -0400
Message-ID: <CAB__hTTwPktvP2H=Fn7K-GwJ2QCtFiVEi+QD-ncOHPgqT5VvuA@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: I76N44Z2OJLOIKRQWVLS67GFYPA743ZV
X-Message-ID-Hash: I76N44Z2OJLOIKRQWVLS67GFYPA743ZV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4 Replay block on E31x
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I76N44Z2OJLOIKRQWVLS67GFYPA743ZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8852368208332908958=="

--===============8852368208332908958==
Content-Type: multipart/alternative; boundary="000000000000b41c0205bf55afa1"

--000000000000b41c0205bf55afa1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,
Perhaps Ettus can answer definitively, but in past emails I have had with
Wade Fife, he has indicated that there is currently no support for the
Replay block on the E310 (& thus I assume E312) and that the DRAM itself is
not presently supported from RFNoC.
Rob

On Tue, Apr 6, 2021 at 12:41 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> I would like to build a FPGA image with a replay block for E312.
> However, there is no dram_clk on this device.
> How should I instantiate my replay in my .yml?
>
> My modification so far:
>
> diff --git a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
> b/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
> index aa464454e..3e649caa1 100644
> --- a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
> +++ b/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml
> @@ -20,12 +20,21 @@ stream_endpoints:
>      ctrl: False                     # Endpoint passes control traffic
>      data: True                      # Endpoint passes data traffic
>      buff_size: 16384                # Ingress buffer size for data
> +  ep4:                       # Stream endpoint name
> +    ctrl: False                     # Endpoint passes control traffic
> +    data: True                      # Endpoint passes data traffic
> +    buff_size: 4096                 # Ingress buffer size for data
>
>  # A list of all NoC blocks in design
>  # ----------------------------------
>  noc_blocks:
>    radio0:                            # NoC block name
>      block_desc: 'radio_2x64.yml'     # Block device descriptor
> +  replay0:
> +    block_desc: 'replay.yml'
> +    parameters:
> +      NUM_PORTS: 1
> +      MEM_ADDR_W: 30
>
>  # A list of all static connections in design
>  # ------------------------------------------
> @@ -42,6 +51,10 @@ connections:
>    - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio }
>    - { srcblk: _device_, srcport: x300_radio, dstblk: radio0, dstport:
> x300_radio }
>    - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
> time_keeper }
> +  # ep4 & replay0
> +  - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
> +  - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
> +  - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram=
 }
>
>  # A list of all clock domain connections in design
>  # ------------------------------------------------
> @@ -52,3 +65,4 @@ connections:
>  #         - dstport =3D Clock domain on the destination block to connect
>  clk_domains:
>    - { srcblk: _device_, srcport: radio, dstblk: radio0, dstport: radio }
> +  - { srcblk: _device_, srcport: dram,  dstblk: replay0, dstport: mem  }
>
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b41c0205bf55afa1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0C=C3=A9dric,</div><div>Perhaps Et=
tus can answer definitively, but in past emails I have had with Wade Fife, =
he has indicated that there is currently no support for the Replay block on=
 the E310 (&amp; thus I assume E312) and that the DRAM itself is not presen=
tly supported from RFNoC.</div><div>Rob</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 6, 2021 at 12:41 PM C=C3=
=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
I would like to build a FPGA image with a replay block for E312.<br>
However, there is no dram_clk on this device.<br>
How should I instantiate my replay in my .yml?<br>
<br>
My modification so far:<br>
<br>
diff --git a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml b/fpga/usrp3/top=
/e31x/e310_rfnoc_image_core.yml<br>
index aa464454e..3e649caa1 100644<br>
--- a/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml<br>
+++ b/fpga/usrp3/top/e31x/e310_rfnoc_image_core.yml<br>
@@ -20,12 +20,21 @@ stream_endpoints:<br>
=C2=A0 =C2=A0 =C2=A0ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
=C2=A0 =C2=A0 =C2=A0data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
=C2=A0 =C2=A0 =C2=A0buff_size: 16384=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 # Ingress buffer size for data<br>
+=C2=A0 ep4:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0# Stream endpoint name<br>
+=C2=A0 =C2=A0 ctrl: False=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0# Endpoint passes control traffic<br>
+=C2=A0 =C2=A0 data: True=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Endpoint passes data traffic<br>
+=C2=A0 =C2=A0 buff_size: 4096=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0# Ingress buffer size for data<br>
<br>
=C2=A0# A list of all NoC blocks in design<br>
=C2=A0# ----------------------------------<br>
=C2=A0noc_blocks:<br>
=C2=A0 =C2=A0radio0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # NoC block name<br>
=C2=A0 =C2=A0 =C2=A0block_desc: &#39;radio_2x64.yml&#39;=C2=A0 =C2=A0 =C2=
=A0# Block device descriptor<br>
+=C2=A0 replay0:<br>
+=C2=A0 =C2=A0 block_desc: &#39;replay.yml&#39;<br>
+=C2=A0 =C2=A0 parameters:<br>
+=C2=A0 =C2=A0 =C2=A0 NUM_PORTS: 1<br>
+=C2=A0 =C2=A0 =C2=A0 MEM_ADDR_W: 30<br>
<br>
=C2=A0# A list of all static connections in design<br>
=C2=A0# ------------------------------------------<br>
@@ -42,6 +51,10 @@ connections:<br>
=C2=A0 =C2=A0- { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstp=
ort: ctrlport_radio }<br>
=C2=A0 =C2=A0- { srcblk: _device_, srcport: x300_radio, dstblk: radio0, dst=
port: x300_radio }<br>
=C2=A0 =C2=A0- { srcblk: _device_, srcport: time_keeper, dstblk: radio0, ds=
tport: time_keeper }<br>
+=C2=A0 # ep4 &amp; replay0<br>
+=C2=A0 - { srcblk: ep4,=C2=A0 =C2=A0 =C2=A0srcport: out0,=C2=A0 dstblk: re=
play0, dstport: in_0 }<br>
+=C2=A0 - { srcblk: replay0, srcport: out_0, dstblk: ep4,=C2=A0 =C2=A0 =C2=
=A0dstport: in0=C2=A0 }<br>
+=C2=A0 - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: d=
ram }<br>
<br>
=C2=A0# A list of all clock domain connections in design<br>
=C2=A0# ------------------------------------------------<br>
@@ -52,3 +65,4 @@ connections:<br>
=C2=A0#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- dstport =3D Clock domain on the =
destination block to connect<br>
=C2=A0clk_domains:<br>
=C2=A0 =C2=A0- { srcblk: _device_, srcport: radio, dstblk: radio0, dstport:=
 radio }<br>
+=C2=A0 - { srcblk: _device_, srcport: dram,=C2=A0 dstblk: replay0, dstport=
: mem=C2=A0 }<br>
<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b41c0205bf55afa1--

--===============8852368208332908958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8852368208332908958==--
