Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 024391C4A87
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2020 01:45:21 +0200 (CEST)
Received: from [::1] (port=35868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jVkm0-0007r4-2v; Mon, 04 May 2020 19:45:20 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:42250)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jVklw-0007iL-2y
 for usrp-users@lists.ettus.com; Mon, 04 May 2020 19:45:16 -0400
Received: by mail-io1-f47.google.com with SMTP id e9so52757iok.9
 for <usrp-users@lists.ettus.com>; Mon, 04 May 2020 16:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bXExe6s3kDM7mHz8b0wjGPWgoEzZjCMogRV7TYV3QhM=;
 b=o7ELKZg/gsoPSFKjwtLNDs46HOWrqbM1ZLX9dazvCA5mhoLVlVXz1q4HtVD1Zr0Moa
 E89Iq9j3BKyIUfug6nwH8kJ7wi8CXVWzg4cUTIkLrnLP0Idsb4J3db4ZDs7LAZExoJnn
 hrHT0XXWfHZlkwG0MRLKJRhE0EOY1n5AlqTTBwyR8dMmqiU8OtE9MSUHit0yppd4vbI9
 oRhUnHsYjezgjSeBkflp9A262bHMBwDcjcSK7OEq2uD22DbvdfhpkxtfIZt8r3PgJRUp
 +ThpDsOzlw3o4vUHpjh5ZYzW2JqKdgOr9y5VXNKtTH8JVDPaDoNDKVtRx4+7Th6eyf4h
 lxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bXExe6s3kDM7mHz8b0wjGPWgoEzZjCMogRV7TYV3QhM=;
 b=dSwWqQv5bap1SfKTAORSg4yzMO2p+pGgDDdIeSUnkRfMnFFQZ9YKWjV5N1pvkX0R5P
 C9B9VCx5ywlTUlMaN0TSxl1IZSjAFjiwe1ZuNcFv0WKWPZLK7p28ox4pj6VXjIS4NCBB
 LBNZrrrGZ0mJ5+aSiAsU457q5c9uvlTlwKTsTjZct8Kx9Hwz3tbtU0i5Q6XbZxa157FD
 efkBskiaMe0CxB5zu8h5IUGf+bMrT8aGDOPEFoNF28xi9FavoKf3igcQkYDJePWyrjEA
 J/R6UbO4jhM4q2rErfWYRQO3M2kdvPzXqIWH4NG75JcpaFGvO+1L+zwJaTyFymEMneId
 zwIg==
X-Gm-Message-State: AGi0PuZ2bcfaltVDmm0exFQUHCuBHsXRGb9GP2776fAAtVWZO1MEz0Pw
 XrznOddY1FOJFxFVWs56F+IwkgO6Ed3XvUV4RhkV2M7zSS1JgA==
X-Google-Smtp-Source: APiQypJwVgbIw1DR2wVKow14Y71V0M0C1VGq0KikKR/iAjD6t6rQqEdZEYGlgdUfOiYbemY3/KaU9o5aPWCqXw4UZ6o=
X-Received: by 2002:a5e:8203:: with SMTP id l3mr815642iom.35.1588635875233;
 Mon, 04 May 2020 16:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxtCj6iQymGZ9zNbGWxBjybOC=6GN7=OzpA2HvkiiYTbzg@mail.gmail.com>
 <CAB__hTQt5Yaw3xYKAiw+eRRH62g_s=tDVMgQtwNcng_jW7EnSw@mail.gmail.com>
 <CAFOi1A57F7PnKWoCcrPuh=G643TADN3_0xxHTTXNuLb2HiJLOQ@mail.gmail.com>
 <CAPRRyxtdJyzJJdmttiSSNFgCEKbZb+dR4+ay0=U+-8GmzyCVXw@mail.gmail.com>
In-Reply-To: <CAPRRyxtdJyzJJdmttiSSNFgCEKbZb+dR4+ay0=U+-8GmzyCVXw@mail.gmail.com>
Date: Tue, 5 May 2020 02:44:23 +0300
Message-ID: <CAPRRyxvcMU3gRHQPf83bL0_A=E6bcUmpCaNw2ZH3Fq3pDKsbaQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Subject: Re: [USRP-users] How to set channel B reception with rfnoc USRP
 E310?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============4707674129741023664=="
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

--===============4707674129741023664==
Content-Type: multipart/alternative; boundary="00000000000005708f05a4db1d12"

--00000000000005708f05a4db1d12
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As far as I understand the examples and RFNoC are sharpened for the N
series of boards

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 02:37, Ivan Zahartch=
uk <adray0001@gmail.com>:

> As I understand it, you mean the Radio select parameter in the RFNoC Radi=
o
> block. When setting the parameter to "B", an error is issued: Traceback
> (most recent call last):   File "rfnoc_fosphor_network_usrp.py", line 259=
,
> in <module>     main ()   File "rfnoc_fosphor_network_usrp.py", line 248,
> in main     tb =3D top_block_cls (fft_size =3D options.fft_size, freq =3D
> options.freq, gain =3D options.gain, host_ip_addr =3D options.host_ip_add=
r,
> param =3D options.param, samp_rate =3D options.samp_rate, tdecay =3D
> options.tdecay, trise =3D options. trise)   File
> "rfnoc_fosphor_network_usrp.py", line 71, in __init__     eleven   File
> "/usr/lib/python2.7/site-packages/ettus/ettus_swig.py", line 2431, in mak=
e
>     return _ettus_swig.rfnoc_radio_make (dev, tx_stream_args,
> rx_stream_args, radio_select, device_select) RuntimeError: Cannot find a
> block for ID: Radio_1
>
> =D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 01:47, Martin Brau=
n via USRP-users <
> usrp-users@lists.ettus.com>:
>
>> It does; the channel parameter on E310 is used to address the A- or
>> B-side.
>>
>> On Mon, May 4, 2020 at 1:39 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Does the 2nd argument to set_rx_antenna() indicate which radio port?  I=
f
>>> so, try setting it to 1.
>>> Rob
>>>
>>> On Mon, May 4, 2020 at 2:02 PM Ivan Zahartchuk via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hello, I'm trying to switch between all four USRP E310 inputs. For
>>>> this, I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna=
 ("TX
>>>> / RX", 0) but I can only switch in channel A. RFNoC Radio does not hav=
e the
>>>> set_rx_subdev_spec command. Tell me how can I switch across all 4 chan=
nels?
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000005708f05a4db1d12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newline"><span style=
=3D"font-family:arial,sans-serif;font-size:28px;white-space:pre-wrap;backgr=
ound-color:rgb(248,249,250)">As far as I understand the examples and RFNoC =
are sharpened for the N series of boards</span><br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 5 =D0=BC=
=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 02:37, Ivan Zahartchuk &lt;<a href=3D"mail=
to:adray0001@gmail.com">adray0001@gmail.com</a>&gt;:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">As I understand it, y=
ou mean the Radio select parameter in the RFNoC Radio block. When setting t=
he parameter to &quot;B&quot;, an error is issued: Traceback (most recent c=
all last):
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 259, in &l=
t;module&gt;
=C2=A0=C2=A0=C2=A0=C2=A0main ()
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 248, in ma=
in
=C2=A0=C2=A0=C2=A0=C2=A0tb =3D top_block_cls (fft_size =3D options.fft_size=
, freq =3D options.freq, gain =3D options.gain, host_ip_addr =3D options.ho=
st_ip_addr, param =3D options.param, samp_rate =3D options.samp_rate, tdeca=
y =3D options.tdecay, trise =3D options. trise)
=C2=A0=C2=A0File &quot;rfnoc_fosphor_network_usrp.py&quot;, line 71, in __i=
nit__
=C2=A0=C2=A0=C2=A0=C2=A0eleven
=C2=A0=C2=A0File &quot;/usr/lib/python2.7/site-packages/ettus/ettus_swig.py=
&quot;, line 2431, in make
=C2=A0=C2=A0=C2=A0=C2=A0return _ettus_swig.rfnoc_radio_make (dev, tx_stream=
_args, rx_stream_args, radio_select, device_select)
RuntimeError: Cannot find a block for ID: Radio_1<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 5 =D0=
=BC=D0=B0=D1=8F 2020 =D0=B3. =D0=B2 01:47, Martin Braun via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">It does; the channel parameter on E310 is used =
to address the A- or B-side.<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 at 1:39 PM Rob Kossler =
&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Does the 2nd argument to set_rx_antenna() indicate which radi=
o port?=C2=A0 If so, try setting it to 1.<div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 4, 2020 =
at 2:02 PM Ivan Zahartchuk via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hello, I&#39;m trying to switch between all four USRP E310 inputs. For t=
his, I use the command self.uhd_rfnoc_streamer_radio_0.set_rx_antenna (&quo=
t;TX / RX&quot;, 0) but I can only switch in channel A. RFNoC Radio does no=
t have the set_rx_subdev_spec command. Tell me how can I switch across all =
4 channels?</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000005708f05a4db1d12--


--===============4707674129741023664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4707674129741023664==--

