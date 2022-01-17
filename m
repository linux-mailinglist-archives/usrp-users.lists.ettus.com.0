Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B834902F0
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 08:31:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 531F53851C7
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 02:31:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gJzqTJUU";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 470CE384B45
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 02:30:21 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id j134so17532395ybj.6
        for <usrp-users@lists.ettus.com>; Sun, 16 Jan 2022 23:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=na5syZkcb7CZlnMsFdWGJAZwGvWxPf04dBw+hkuxv8s=;
        b=gJzqTJUUztjechiML1GaAPUZrcX4PenvilV132AgT/XEgPAKsKoXcasYHcPnXez8kF
         Xpwc5es6lpS5xIxUZXWTMyHVDfhYrDV1DWnnvxYk1hgsp0G91ZDaJb3Syo7RxWLoiIa0
         sXUX0EQUpMTcoWkwO+jR3bZ9n2J2jTqQrbydXx8yN2FrEiaT2hq8ghUp9a0G2loShNow
         5wpliC1/Sf5lb5AVu0cN5dsjQiOC+l60ta+INrOdgZ+HfCcGhgWaCIfU8NU1xfWZ7Hz1
         P1LJteD6GEUL7eoaW4kfiRjI4Y/rywrHmAsMFssu3Lkxox3lMrW/4VvAz+Ia4lKyqJwv
         LS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=na5syZkcb7CZlnMsFdWGJAZwGvWxPf04dBw+hkuxv8s=;
        b=p5vOI4HzAWDgKTGmuxALJOKr9JPgcKiE6w7McIU58lXCbbfEugtX7hMIFDM3YfCvcZ
         IZRl6cl61hrr5BGmOcvpsIyuleibjTD9y40uLNRomTs9ghfwrqP4r/XNbU2OOobDK0tG
         qPH/Ff6Nh3g0nkWICVg4Q+Cdl4Q4W/Ilgqjt6YxVB2e5whfjc4rBzG9W7dtG4eJjRB5B
         sIJtN3qHjlU97OVf4mvHXmnfD4D+euYlgFvcW6m4zCCCOMOUSM22ymv3EamUaXe9V0yu
         NhohekQ5SHtAZ5yQ2EHAnSV8cfVDIBqsIAqd/oj02JfEt0YDPek5KuqVm0VTcwWuA4nv
         zREg==
X-Gm-Message-State: AOAM530kNfaN7Rn9NU+fvZE1r3SAgkJsZFGZt+85hkBjtfaTyjClRcXw
	T2daPwUUJ6xl7C8+LmFbmzsd5gT0fzDs/shg0e9p7Rlh3yDAc4xx5Co=
X-Google-Smtp-Source: ABdhPJzfSQcVwuvN5ceC+L4XDr9IsLakF1/vwlaNx2oTTwD83QbrZG8RfAQvvmALJEsSRw0/ZQd1qkRW89kOd8H45r4=
X-Received: by 2002:a05:6902:725:: with SMTP id l5mr24287309ybt.575.1642404619901;
 Sun, 16 Jan 2022 23:30:19 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PvZHB4UqicSdDWwgJQhAhY25rWB3J0tWUV2q-=ZR5sPpw@mail.gmail.com>
In-Reply-To: <CAA=S3PvZHB4UqicSdDWwgJQhAhY25rWB3J0tWUV2q-=ZR5sPpw@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Mon, 17 Jan 2022 11:00:08 +0330
Message-ID: <CAA=S3Ps56cBBBM6Qe-rbK5CyWjvj4-bcdrQZT2LmReaaWF_Kqw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DEJ5TLQQO55KKDBMTJVBGKK6A7XLMA5E
X-Message-ID-Hash: DEJ5TLQQO55KKDBMTJVBGKK6A7XLMA5E
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: For building Verilog code for FPGA x300 series which license Vivado should I necessary?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DEJ5TLQQO55KKDBMTJVBGKK6A7XLMA5E/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1654714413127720059=="

--===============1654714413127720059==
Content-Type: multipart/alternative; boundary="000000000000f261f805d5c21fa4"

--000000000000f261f805d5c21fa4
Content-Type: text/plain; charset="UTF-8"

I'm sorry for the typo, I reformed it For building Verilog code (&
generating bitstreams ) for the FPGA x300 series which  Vivado license for
a developer is necessary?
Webpack license is enough?
Or do we need a full license?

thanks very much

On Mon, Jan 17, 2022 at 10:47 AM sp h <stackprogramer@gmail.com> wrote:

> For building Verilog code for FPGA x300 series which license Vivado should
> I necessary?
> Webpack license is enough?
> Or do we need a full license?
>
> thanks very much
>
>

--000000000000f261f805d5c21fa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m sorry for the typo, I=C2=A0reformed it For buildin=
g Verilog code (&amp; generating bitstreams ) for the FPGA x300 series whic=
h=C2=A0=C2=A0Vivado=C2=A0license for a developer is necessary?<br><div>Webp=
ack license is enough?</div><div>Or do we need a full license?</div><div><b=
r></div><div>thanks very much</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 17, 2022 at 10:47 AM sp h &l=
t;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">For building Verilog code for FPGA x300 series which license Vi=
vado should I necessary?<br><div>Webpack license is enough?</div><div>Or do=
 we need a full license?</div><div><br></div><div>thanks very much</div><di=
v><br></div></div>
</blockquote></div>

--000000000000f261f805d5c21fa4--

--===============1654714413127720059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1654714413127720059==--
