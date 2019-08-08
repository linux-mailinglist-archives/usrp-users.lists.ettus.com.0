Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9E7863B0
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 15:52:09 +0200 (CEST)
Received: from [::1] (port=37514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvipr-0005bW-2t; Thu, 08 Aug 2019 09:52:07 -0400
Received: from mail-vk1-f180.google.com ([209.85.221.180]:44090)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hvipn-0005WY-MR
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 09:52:03 -0400
Received: by mail-vk1-f180.google.com with SMTP id w186so10350532vkd.11
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 06:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CbSX6m+sxDnZTsMZ1u9c/E4o91MWczUD0FO5N1nwMK0=;
 b=nW4xRyriKrlJ5j6uvy6I6fVobPxTw7RqWV6LaaRt9yN9jOgayN6n0U1GhEus8Vbvuu
 Tk4ygfJHWNUlqP1lWd7ZYP0Vmfya56s2Z88OhAkWwdt8iRm/ScVToar62eUOVSdEo5e5
 Dp893/uyVav+SiXhzWICSZuZqEtp93MrHaQbDvIe1ZZuZ7X/j7SnVLh6l5UZWPhRVvT3
 Ip5nzjicRYl7UmGvCRuiAxLHk2hbdCUDkaoM2GK/5rj7AI07G5USyjq4KXxNSipaFHmP
 G1Rb5+sQfhipbEfnM+fRqWNEBa2Vs2qfHgta3XuCcqw0CJFx7cIxoZnlSYUu60+pz9jP
 dkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CbSX6m+sxDnZTsMZ1u9c/E4o91MWczUD0FO5N1nwMK0=;
 b=mT5hd7f0f8zdtB0YXmaBP1KljB5nCxOob/WXXKQH09xcZgR5WQZDpEeQPToXkY7WB2
 /YE3Hbc5iO/3xe7G0VguxbeooNTcbyqPD1/DKcrXUWvigzIPn5PROqIN7WJ51kc9VNH8
 L6EQehq+moLMI3GAWIN/jxdh7NneJl8oIdDtty8dMjezCuPXRW0CH1P2vz7SN9k+T/Xc
 i98iiwVHOySkTPH8W6ugHkBzpIWH+YplrMVITLIveaQOerTz3PutveJEuijAa9Hr20e9
 XVF7gSI6fJfru9ZB20b3wvW5K/LdS+En8lN6tIh25QGAedB483Zr/J2zWOmN4lApjAOA
 FVIw==
X-Gm-Message-State: APjAAAU3N8aElmVKRScuM6wC89WjWMR8LbQPfJQgt+6ob/VsApSu3B30
 zAA0vzh2Va2oTD2c25VVw24y0HcxbUfWMGi3f/s=
X-Google-Smtp-Source: APXvYqxhMZ6myKGT/H0ynn7loA2P+0pX7BugfCIfxyqTbRXfWVImoxNp1Lm1oF7zsc6ZEEA3NxMV+LPsXDiAdn+Gei8=
X-Received: by 2002:a1f:b48e:: with SMTP id d136mr5572223vkf.57.1565272282869; 
 Thu, 08 Aug 2019 06:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <97D6F3B6-019A-41A3-A8D6-06D32C15B528@yahoo.com>
 <CADRnH20Zn3eje8HuKxLV3nJhvKBmPpDkNiGcjX2ojVN80VPdiw@mail.gmail.com>
 <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
In-Reply-To: <7C7EB5C4-8843-4D92-9E3A-65126048DA13@yahoo.com>
Date: Thu, 8 Aug 2019 09:51:11 -0400
Message-ID: <CADRnH22cZXxKQ6OhavSOdN+bob520J4rzHSOMooosdQcaeiSsA@mail.gmail.com>
To: Royce Connerley <royceconnerley@yahoo.com>
Subject: Re: [USRP-users] RFNoC Polyphase Channelizer updates
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4033140056694489130=="
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

--===============4033140056694489130==
Content-Type: multipart/alternative; boundary="00000000000065b724058f9b5aa3"

--00000000000065b724058f9b5aa3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Royce,

Can you walk me through your use case real quick?

- How many channels?
- How wide is each channel?
- Are the channels equally spaced?

The polyphase channelizer in theseus-cores currently has a static number of
"max channels" that get instantiated.... which is not insignificant. We've
discussed exposing a build-time parameter that could scale down the max
number of channels to save some resources, but 1) that hasn't been
implemented yet and 2) I'm not totally confident it would fit in the e310
anyway.

But lets think through your scenario and we can discuss where we'd need the
channelizer to go for it to work... for example, you probably also need the
FPGA-based channel downselection in the channelizer -- the E310 wont be
able to return all channels in real time! Or, we could consider other
approaches -- the DDC channelizer in theseus-cores might be workable if you
have just small number of channels and you need arbitrary spacing/channel
widths.

EJ

On Thu, Aug 8, 2019, 8:52 AM Royce Connerley <royceconnerley@yahoo.com>
wrote:

> EJ:
>
> I want to pick a few narrowband channels scattered over about 5 MHz.  I
> would like to be able to use your channelizer in an E310.  Do you think i=
t
> could fit in the E310=E2=80=99s FPGA?  When I run uhd_image_builder with =
just the
> channelizer and a FIFO, I=E2=80=99m seeing the following errors:
>
> ERROR: [Place 30-640] Place Check : This design requires more RAMB36/FIFO
> cells than are available in the target device. This design requires 324 o=
f
> such cell types but only 140 compatible sites are available in the target
> device. Please analyze your synthesis results and constraints to ensure t=
he
> design is mapped to Xilinx primitives as expected. If so, please consider
> targeting a larger device.
> ERROR: [Place 30-640] Place Check : This design requires more RAMB18 and
> RAMB36/FIFO cells than are available in the target device. This design
> requires 703 of such cell types but only 280 compatible sites are availab=
le
> in the target device. Please analyze your synthesis results and constrain=
ts
> to ensure the design is mapped to Xilinx primitives as expected. If so,
> please consider targeting a larger device.
> ERROR: [Place 30-640] Place Check : This design requires more RAMB36E1
> cells than are available in the target device. This design requires 324 o=
f
> such cell types but only 140 compatible sites are available in the target
> device. Please analyze your synthesis results and constraints to ensure t=
he
> design is mapped to Xilinx primitives as expected. If so, please consider
> targeting a larger device.
>
> Royce Connerley
>
> On Jul 24, 2019, at 6:34 PM, EJ Kreinar <ejkreinar@gmail.com> wrote:
>
> Hi Royce,
>
> Phil and I have been working on the channelizer in the theseus-cores repo
> here: gitlab.com/theseus-cores/theseus-cores
>
> The master branch has a (potentially) working channelizer, at least
> according to my recent tests on the x310, as long as the network interfac=
e
> supports the desired output rate.
>
> There's also an fpga solution for channel downselection in a branch that
> Phil put together. The ball is in my court to turn the crank and merge to
> master with supporting software, but I haven't gotten much of a chance
> recently.
>
> If you're interested in testing we could definitely use some more people
> to give it a shot :D Let me know if you need a sample bitstream or if you
> can build one yourself.
>
> EJ
>
> On Wed, Jul 24, 2019, 4:39 PM Royce Connerley via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> At the 2018 GRCon, EJ Kreinar spoke about improvements to the RFNoC
>> polyphase channelizer.  Has there been any activity on this?
>>
>> Royce Connerley
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--00000000000065b724058f9b5aa3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Royce,<div dir=3D"auto"><br></div><di=
v dir=3D"auto">Can you walk me through your use case real quick?</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">- How many channels?</div><div dir=
=3D"auto">- How wide is each channel?</div><div dir=3D"auto">- Are the chan=
nels equally spaced?</div><div dir=3D"auto"><br></div><div dir=3D"auto">The=
 polyphase channelizer in theseus-cores currently has a static number of &q=
uot;max channels&quot; that get instantiated.... which is not insignificant=
. We&#39;ve discussed exposing a build-time parameter that could scale down=
 the max number of channels to save some resources, but 1) that hasn&#39;t =
been implemented yet and 2) I&#39;m not totally confident it would fit in t=
he e310 anyway.=C2=A0</div><div dir=3D"auto"><br></div><div>But lets think =
through your scenario and we can discuss where we&#39;d need the channelize=
r to go for it to work... for example, you probably also need the FPGA-base=
d channel downselection in the channelizer -- the E310 wont be able to retu=
rn all channels in real time! Or, we could consider other approaches -- the=
 DDC channelizer in theseus-cores might be workable if you have just small =
number of channels and you need arbitrary spacing/channel widths.</div><div=
><br></div><div>EJ</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019, 8:52 AM Royce Connerley =
&lt;<a href=3D"mailto:royceconnerley@yahoo.com" target=3D"_blank">royceconn=
erley@yahoo.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div style=3D"overflow-wrap: break-word;">EJ:<div><br></div>=
<div>I want to pick a few narrowband channels scattered over about 5 MHz.=
=C2=A0 I would like to be able to use your channelizer in an E310.=C2=A0 Do=
 you think it could fit in the E310=E2=80=99s FPGA?=C2=A0 When I run uhd_im=
age_builder with just the channelizer and a FIFO, I=E2=80=99m seeing the fo=
llowing errors:</div><div><br></div><div><div>ERROR: [Place 30-640] Place C=
heck : This design requires more RAMB36/FIFO cells than are available in th=
e target device. This design requires 324 of such cell types but only 140 c=
ompatible sites are available in the target device. Please analyze your syn=
thesis results and constraints to ensure the design is mapped to Xilinx pri=
mitives as expected. If so, please consider targeting a larger device.</div=
><div>ERROR: [Place 30-640] Place Check : This design requires more RAMB18 =
and RAMB36/FIFO cells than are available in the target device. This design =
requires 703 of such cell types but only 280 compatible sites are available=
 in the target device. Please analyze your synthesis results and constraint=
s to ensure the design is mapped to Xilinx primitives as expected. If so, p=
lease consider targeting a larger device.</div><div>ERROR: [Place 30-640] P=
lace Check : This design requires more RAMB36E1 cells than are available in=
 the target device. This design requires 324 of such cell types but only 14=
0 compatible sites are available in the target device. Please analyze your =
synthesis results and constraints to ensure the design is mapped to Xilinx =
primitives as expected. If so, please consider targeting a larger device.</=
div></div><div><br></div><div>Royce Connerley</div><div><br><blockquote typ=
e=3D"cite"><div>On Jul 24, 2019, at 6:34 PM, EJ Kreinar &lt;<a href=3D"mail=
to:ejkreinar@gmail.com" rel=3D"noreferrer" target=3D"_blank">ejkreinar@gmai=
l.com</a>&gt; wrote:</div><br class=3D"gmail-m_-7955918035240629135m_-48322=
31494987881177Apple-interchange-newline"><div><div dir=3D"auto">Hi Royce,<d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Phil and I have been working on=
 the channelizer in the theseus-cores repo here: <a href=3D"http://gitlab.c=
om/theseus-cores/theseus-cores" rel=3D"noreferrer" target=3D"_blank">gitlab=
.com/theseus-cores/theseus-cores</a></div><div dir=3D"auto"><br></div><div =
dir=3D"auto">The master branch has a (potentially) working channelizer, at =
least according to my recent tests on the x310, as long as the network inte=
rface supports the desired output rate.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">There&#39;s also an fpga solution for channel downselection=
 in a branch that Phil put together. The ball is in my court to turn the cr=
ank and merge to master with supporting software, but I haven&#39;t gotten =
much of a chance recently.=C2=A0</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">If you&#39;re interested in testing we could definitely use some =
more people to give it a shot :D Let me know if you need a sample bitstream=
 or if you can build one yourself.</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">EJ</div><div dir=3D"auto"></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2019, 4:39 PM Ro=
yce Connerley via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">At the 2=
018 GRCon, EJ Kreinar spoke about improvements to the RFNoC polyphase chann=
elizer.=C2=A0 Has there been any activity on this?<br>
<br>
Royce Connerley<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><br></div></blockquote></div>

--00000000000065b724058f9b5aa3--


--===============4033140056694489130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4033140056694489130==--

