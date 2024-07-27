Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 231DD93DD1B
	for <lists+usrp-users@lfdr.de>; Sat, 27 Jul 2024 05:29:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6B993859E4
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jul 2024 23:29:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1722050974; bh=XkOIxrRqSAtJeXv+dd7MnFDWGttOa4OTfv3pWqey47s=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PH9iaIFCgrDsJ16r1sPYGky5AcSD3F+RUqVS9V43fxeTv3IT+dxsnY9fh70doGBTZ
	 RQDNOI0w8sg1I8Ptz6rkLlCPCs0cG0rex7aHerNLpoSP2PgVIqOLgYLgstUNt7PS4S
	 ZjYyc+EbOAKUOFdf4dgZy9wagrOvu/Ar/8mNl4fAPiw3gffI3efOrpoG+CD4ye9/AZ
	 utzNSG1567RBCUbQl+u2YqQXK+1njJ6K+7n+vfcALjgBPnR5Ozzy++Zpu97jBdcUa1
	 Vzme4x2Ip6OMU/9LlXyS/L9ZV94vIYrr9Gd8qImmobDe591yqyNKDRmUqElqPilDxD
	 gii4Xz08s2IEQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E329385371
	for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 23:29:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jOg7sjvC";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a7a8caef11fso247520166b.0
        for <usrp-users@lists.ettus.com>; Fri, 26 Jul 2024 20:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722050956; x=1722655756; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ROYxaY5JLaC0LX6pk1ux8Vt8Z3R23SmexhM9NiOhL6A=;
        b=jOg7sjvCpgo3wru7y1Zup3r0w1vzoULiCL8Bc8SPG33q+MBTp0M/AI3KlZcLqFS9Mt
         7RZ1f1+KE8IK+GoInWrn52kGVyW7oR8SibD5yZ17XtzImVvodvZ9nkcV54ZtuEyn4kpz
         wdxCSL9/ZME4Q/dCEMH+hAg0kK949vOT0gAPFreqTrLpl4/KdXvW25VbfM4LmFfTBjkH
         1s7zaSotpRn7epaehok2wdZp+jLUkCL8boGx/Er0Hd/Kuat3XpFJ20t/pbSwpcy7Ghr+
         PNyExuHk6R6vONgKE7zADbMdCBdap4WtVCzUQN9xHyNNiLNEquOAYOzx3chovISvksg6
         P/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722050956; x=1722655756;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ROYxaY5JLaC0LX6pk1ux8Vt8Z3R23SmexhM9NiOhL6A=;
        b=HYOJR6qNcP+q7AP48t/EZxLMl6Hklh1StIL6o8H4CZrKEifi2PZrGuAEeHdtF8EHid
         HIVM4VT6cWX9gw3LxeNwKxP8gt+LngPzLRYSPpbUqHxTPiYiDSFWtVg8+ABhme23otC9
         h93UyBdA+WXJ4JjXAtF2rKdOOeRrElLaqD/xTU0UzKQ+C4/0J1YuJAxwih9tMvEWyfoU
         jN6SiJvGKte+K1GmHxSJIK22RR/V6TRCHVSTyL25JvTwVsC4ke8DNq8NZEUgGlE4IH/q
         krLGk53c8N8v2Dz20v2K7j5ySWNyap5t4jJ+Dfrq7Z69S/LTSR3q8q2sh+6sH/UHHdvr
         S4Ew==
X-Gm-Message-State: AOJu0YzRte6BmQjpi2iHta0JqBif2Fk8M9k2DIpC6ohJ8l0y6+eWwmSM
	slhT8uNIgjcx/BtEQi/1nkns5DGglxIC7UiqjTvcczc3EvuRY9mNS+yuEvYj/ybIloaCLNd/bMF
	go3ZmjAbR9CuVtTVXPsVwByr5yrfx35R3
X-Google-Smtp-Source: AGHT+IHaFp7RqKbkPQ450KAdsNZfR4mQmK0Q95+t/LiA6NpIArzQeRp8dSFtoLAWuUcwdEcei1lv0CoQiB3W04EWpRU=
X-Received: by 2002:a17:907:97c4:b0:a77:e1fb:7dec with SMTP id
 a640c23a62f3a-a7d3fffd2b8mr87143566b.17.1722050955852; Fri, 26 Jul 2024
 20:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAFOi1A5ZbQfZ7jowHEmqh-gdh+cN22ho5ceAsUttzmcz5CNmhg@mail.gmail.com>
 <D7FD0A87-0BCB-498A-814C-6F0E0A3F9064@gmail.com>
In-Reply-To: <D7FD0A87-0BCB-498A-814C-6F0E0A3F9064@gmail.com>
From: Tim Smith <secsubs@gmail.com>
Date: Fri, 26 Jul 2024 20:29:04 -0700
Message-ID: <CADPi3fgK2+72MvAaX7i1DsEvoct0dNMAQR6w8sgvZYCzwafnYg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 4WN57PSYUW56TH57EZSE4IQPU3I5CCR4
X-Message-ID-Hash: 4WN57PSYUW56TH57EZSE4IQPU3I5CCR4
X-MailFrom: secsubs@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Making a USRP N230 work
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4WN57PSYUW56TH57EZSE4IQPU3I5CCR4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2225870829933369240=="

--===============2225870829933369240==
Content-Type: multipart/alternative; boundary="0000000000008247bd061e323b84"

--0000000000008247bd061e323b84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin/Marcus,

Really appreciate the responses. I installed Ubuntu 20.04 on a spare
machine, got uhd (3.15.0), gnu-radio and gqrx on it and the N230 worked on
it "out of the box" :)

I apologize, I am sure this must be super annoying for your team -
customers selling surplus boards on ebay and then people like me knocking
around for help but you have no idea how excited I was to hear KQED on FM
streaming through the SDR. The board was a complete blackbox to me when I
got it in the mail a week ago. I have played with SDRs a bit before but had
never cracked open one. Since receiving the N230 board, I've tried to come
to speed with Xilinx FPGAs, the three different versions of the Digilent
JTAG adapters, all the software like Vivado, Mac/Windows/Linux drivers, GNU
Radio workflows and a bunch of other things I am probably forgetting. So
thanks again!

I am not looking for help with code or software but if there is any way you
can share any documentation, that'd be great. I didn't even know the
simplest of things like what's the input voltage for the board. I fed it
12v initially and it refused to power on except for one tiny green LED on
the board. A 6v supply brought the board to life and now I am running it on
a 5v/4A  supply. I figured out the JTAG and SFP ports but then asked around
and figured out that the two identical ports are likely SAS ports for daisy
chaining these radios. The other port next to the JTAG is likely some sort
of logic analyzer?



On Fri, Jul 26, 2024 at 5:31=E2=80=AFAM Marcus D Leech <patchvonbraun@gmail=
.com>
wrote:

> To amplify on what Martin said.
>
> The N230 was never intended for general availability, and was designed fo=
r
> a specific customer. Several of them have made it into the surplus market=
,
> but they are decidedly unsupported devices.
>
>
> Sent from my iPhone
>
> On Jul 26, 2024, at 8:18=E2=80=AFAM, Martin Braun <martin.braun@ettus.com=
> wrote:
>
> =EF=BB=BF
>
> Hi Tim,
>
> the N230 is unsupported and EOL, so you won't get a lot of help. Just som=
e
> comments:
>
> - You need UHD 3.15; don't try it with UHD 4. You'll probably need to
> build it yourself.
> - If uhd_fft works, that's good news. Device is probably fine.
> - If gqrx doesn't work, maybe you have several versions of UHD, and maybe
> gqrx had special code to identify specific USRP products, but doesn't kno=
w
> the N230 (it's a rare device).
>
> --M
>
> On Fri, Jul 26, 2024 at 8:54=E2=80=AFAM Tim Smith <secsubs@gmail.com> wro=
te:
>
>> Hi,
>>
>> I am trying to make an older N230 board work for me. On MacOS, I got
>> UHD-3.15.0 via MacPorts. "uhd_usrp_probe" discovers the device over the
>> network and I can run "uhd_fft" but when I try to talk to the radio with
>> gqrx, it refuses to find the device. Oddly enough, "device scan" on gqrx
>> automatically populates the "device string" as "addr=3D192.168.20.2" but=
 then
>> won't connect. On Ubuntu 22.04 and 24.04, the UHD package is from the 4.=
xx
>> release where support for N230 had been pulled so nothing works on Ubunt=
u.
>>
>> I tried restoring the commits from this PR:
>> https://github.com/EttusResearch/uhd/commit/d94140a4129d6b2153b15860eeb2=
406672ebb414
>> - I copied the entire N230 folder from the 3.15.0 release into the codeb=
ase
>> from 4.7.0 and added back all the comments/includes for N230 but "make"
>> failed miserably because underlying functions have probably been entirel=
y
>> changed between 3.x and 4.x. I get an error:
>> -------------------------
>> uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor
>> =E2=80=98uhd::usrp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp=
::n230::n230_core_spi_core::sptr)=E2=80=99:
>> uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp:60:13: error: no matching
>> function for call to
>> =E2=80=98uhd::usrp::adf4001_ctrl::adf4001_ctrl(uhd::usrp::n230::n230_cor=
e_spi_core::sptr&,
>> const uint32_t&)=E2=80=99
>>    60 |     _spi(spi)
>> ------------------------
>>
>> I tried building 3.15.0 on Ubuntu 22.04 but that failed with a different
>> set of errors.
>>
>> What's the best way to use/support a N230?
>>
>> --
>> Thanks,
>>
>> Tim
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--=20

--
Thanks,

Tim

--0000000000008247bd061e323b84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin/Marcus,<div><br></div><div>Really appreciate the=
 responses. I installed Ubuntu 20.04 on a spare machine, got uhd (3.15.0), =
gnu-radio and gqrx on it and the N230 worked on it &quot;out of the box&quo=
t; :)=C2=A0</div><div><br></div><div>I apologize, I am sure this must be su=
per annoying for your team - customers selling surplus boards on ebay and t=
hen people like me knocking around for help but you have no idea how excite=
d I was to hear KQED on FM streaming through the SDR. The board was a compl=
ete blackbox to me when I got it in the mail a week ago. I have played with=
 SDRs a bit before but had never cracked open one. Since receiving the=C2=
=A0N230 board, I&#39;ve tried to come to speed with Xilinx FPGAs, the three=
 different versions of the Digilent JTAG adapters, all the software like Vi=
vado, Mac/Windows/Linux drivers, GNU Radio workflows and a bunch=C2=A0of ot=
her things I am probably forgetting. So thanks again!</div><div><br></div><=
div>I am not looking for help with code or software but if there is any way=
 you can share any documentation, that&#39;d be great. I didn&#39;t even kn=
ow the simplest of things like what&#39;s the input voltage for the board. =
I fed it 12v initially and it refused to power on except for one tiny green=
 LED on the board. A 6v supply brought the board to life and now I am runni=
ng it on a 5v/4A =C2=A0supply. I figured out the JTAG and SFP ports but the=
n asked around and figured out that the two identical ports are likely SAS =
ports for daisy chaining these radios. The other port next to the JTAG is l=
ikely some sort of logic analyzer?=C2=A0</div><div><br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Jul 26, 2024 at 5:31=E2=80=AFAM Marcus D Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);=
padding-left:1ex"><div dir=3D"auto">To amplify on what Martin said.=C2=A0<d=
iv><br></div><div>The N230 was never intended for general availability, and=
 was designed for a specific customer. Several of them have made it into th=
e surplus market, but they are decidedly unsupported devices.=C2=A0</div><d=
iv><br></div><div><br id=3D"m_-2244536639715266412lineBreakAtBeginningOfSig=
nature"><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blo=
ckquote type=3D"cite">On Jul 26, 2024, at 8:18=E2=80=AFAM, Martin Braun &lt=
;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@e=
ttus.com</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"=
><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr"><div><br></div=
><div>Hi Tim,</div><div><br></div><div>the N230 is unsupported and EOL, so =
you won&#39;t get a lot of help. Just some comments:</div><div><br></div><d=
iv>- You need UHD 3.15; don&#39;t try it with UHD 4. You&#39;ll probably ne=
ed to build it yourself.</div><div>- If uhd_fft works, that&#39;s good news=
. Device is probably fine.</div><div>- If gqrx doesn&#39;t work, maybe you =
have several versions of UHD, and maybe gqrx had special code to identify s=
pecific USRP products, but doesn&#39;t know the N230 (it&#39;s a rare devic=
e).<br></div></div><div><br></div><div>--M<br></div><div><br></div><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 26, 20=
24 at 8:54=E2=80=AFAM Tim Smith &lt;<a href=3D"mailto:secsubs@gmail.com" ta=
rget=3D"_blank">secsubs@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hi,<div><br></div><div>I am trying to make an older N230 b=
oard work for me. On MacOS, I got UHD-3.15.0 via MacPorts. &quot;uhd_usrp_p=
robe&quot; discovers the device over the network and I can run &quot;uhd_ff=
t&quot; but when I try to talk to the radio with gqrx, it refuses to find t=
he device. Oddly enough, &quot;device scan&quot; on gqrx automatically popu=
lates the &quot;device string&quot; as &quot;addr=3D192.168.20.2&quot; but =
then won&#39;t connect. On Ubuntu 22.04 and 24.04, the UHD package is from =
the 4.xx release where support for N230 had been pulled so nothing works on=
 Ubuntu.</div><div><br></div><div>I tried restoring the commits from this P=
R:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/commit/d94140a4129d=
6b2153b15860eeb2406672ebb414" target=3D"_blank">https://github.com/EttusRes=
earch/uhd/commit/d94140a4129d6b2153b15860eeb2406672ebb414</a> - I copied th=
e entire N230 folder from the 3.15.0 release into the codebase from 4.7.0 a=
nd added back all the comments/includes for N230 but &quot;make&quot; faile=
d miserably because underlying functions have probably been entirely change=
d between 3.x and 4.x. I get an error:</div><div>-------------------------<=
/div><div>uhd-4.7.0.0/host/lib/usrp/n230/n230_cores.cpp: In constructor =E2=
=80=98uhd::usrp::n230::n230_ref_pll_ctrl::n230_ref_pll_ctrl(uhd::usrp::n230=
::n230_core_spi_core::sptr)=E2=80=99:<br>uhd-4.7.0.0/host/lib/usrp/n230/n23=
0_cores.cpp:60:13: error: no matching function for call to =E2=80=98uhd::us=
rp::adf4001_ctrl::adf4001_ctrl(uhd::usrp::n230::n230_core_spi_core::sptr&am=
p;, const uint32_t&amp;)=E2=80=99<br>=C2=A0 =C2=A060 | =C2=A0 =C2=A0 _spi(s=
pi)<br></div><div>------------------------</div><div><br></div><div>I tried=
 building 3.15.0 on Ubuntu 22.04 but that failed with a different set of er=
rors.=C2=A0</div><div><br></div><div>What&#39;s the best way to use/support=
 a N230? =C2=A0</div><div><div><br></div><div dir=3D"ltr" class=3D"gmail_si=
gnature"><div dir=3D"ltr"><div><div>--<br></div>Thanks,<br><br></div>Tim<br=
></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-=
users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquo=
te></div></div></blockquote></div><br clear=3D"all"><div><br></div><span cl=
ass=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div><br>--<br></div>Thanks,<br><br></di=
v>Tim<br></div></div>

--0000000000008247bd061e323b84--

--===============2225870829933369240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2225870829933369240==--
