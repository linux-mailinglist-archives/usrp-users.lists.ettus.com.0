Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2E361A4C6
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 23:47:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7321384160
	for <lists+usrp-users@lfdr.de>; Fri,  4 Nov 2022 18:47:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667602066; bh=eUXzF9nrL8jRQavWbThcM/cVXH35cG+jDwcNf8AWV8w=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GJtDZOHNml1oRSNpDPmQHEhTnI7LUvFCoKIfIg3En2x8QnyyMQ23edsC2ivh5zTmy
	 TNpQqfcjGAGGnfXov+mgwU/JVpjj0Jw3aITe9/7hU8eg2U7IWzLv7o8IobYugYEGaw
	 LofAP6PxOLQrC3jzaNmsYX/fdl8Gy7xVaOd6kZShrka1yv1avy9rk9upE0wi2c6y40
	 wZoTZSutQ9rNoutwWPW0o4sWBCbDimN/nEBGSZFBQT2k68zoQwckZ6Xl3ne89R7KVH
	 WvJmo2rYYNWchFzhv5u1br870zOK/OgayyNwXvRyejf0s75wbJpHkZiaKVhXHtZ3Da
	 RYb4ONdn3HXbw==
Received: from smtp6.emailarray.com (smtp6.emailarray.com [65.39.216.46])
	by mm2.emwd.com (Postfix) with ESMTPS id DA9BE3800BC
	for <usrp-users@lists.ettus.com>; Fri,  4 Nov 2022 18:46:38 -0400 (EDT)
Received: (qmail 5164 invoked by uid 89); 4 Nov 2022 22:46:36 -0000
Received: from unknown (HELO ?127.0.0.1?) (cGhpbGlwQG9wZW5zZHIuY29tQDE3Mi4xMDIuMTUuMTkz) (POLARISLOCAL)  
  by smtp6.emailarray.com with SMTP; 4 Nov 2022 22:46:36 -0000
Date: Fri, 04 Nov 2022 16:46:21 -0600
From: Philip Balister <philip@opensdr.com>
To: usrp-users@lists.ettus.com, Rich Gopstein <rich@ourowndomain.com>,
 Philip Balister <philip@balister.org>
User-Agent: K-9 Mail for Android
In-Reply-To: <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com> <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com> <6110af43-326b-6dcd-e1bb-11ad590f1b8b@gmail.com> <888a07c0-ccc5-4a57-885a-9ff43c915520@balister.org> <CANsNeaqS0jJ0sGFoKWU6EtH1ZYFomnSYz3v9AtX75xfQHoQhDQ@mail.gmail.com>
Message-ID: <E70A701E-8D81-4416-8977-383AC1657DD1@opensdr.com>
MIME-Version: 1.0
Message-ID-Hash: YUAMWPUI4O7KKKUD2SSU4FJSEGHBALFK
X-Message-ID-Hash: YUAMWPUI4O7KKKUD2SSU4FJSEGHBALFK
X-MailFrom: philip@opensdr.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YUAMWPUI4O7KKKUD2SSU4FJSEGHBALFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6310179871182992204=="

--===============6310179871182992204==
Content-Type: multipart/alternative;
 boundary=----IPRJ3FHUVNRLMAPAC285S3DG526KAK
Content-Transfer-Encoding: 7bit

------IPRJ3FHUVNRLMAPAC285S3DG526KAK
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yeah, I can outline the path that needs taking, but it helps to have the ba=
sic skillet=2E Mostly I'm hoping someone solved the 3=2E10 on e300 and will=
 chime in=2E

Philip

On November 4, 2022 4:42:31 PM MDT, Rich Gopstein <rich@ourowndomain=2Ecom=
> wrote:
>Thanks=2E  I'll take a look, though I suspect that is beyond my abilities=
=2E=2E=2E
>
>Rich
>
>
>On Fri, Nov 4, 2022 at 8:49 AM Philip Balister <philip@balister=2Eorg> wr=
ote:
>
>> Random git links that might help:
>>
>> https://github=2Ecom/balister/sdr-build/tree/dunfell-ettus
>>
>> This will build a file system based of a Yocto Project branch that is
>> still supported=2E It does a a gcc version that causes fftw failures
>> though=2E This hasn't been updated in a couple of years, so it does nee=
d
>> updating to collect bug and security fixes=2E
>>
>> https://github=2Ecom/balister/meta-sdr/tree/dunfell-3=2E10
>>
>> Contains work to get gnuradio-3=2E10 building against the YP Dunfell
>> branch=2E Still needs some cleanup=2E Also I need to break out a layer =
to
>> update the gcc version so fftw works=2E This actually happen, but is a
>> spare time task :)
>>
>> All of the above likely need uhd recipe updates=2E
>>
>> So, basically the pieces are available to put gnuradio-3=2E10 on the E3=
XX
>> series are known, they just need someone to do the work to make it happ=
en=2E
>>
>> Philip
>>
>> On 11/2/22 19:05, Marcus D=2E Leech wrote:
>> > On 02/11/2022 16:39, Rich Gopstein wrote:
>> >> I tried following the instructions in here:
>> >>
>> https://kb=2Eettus=2Ecom/Software_Development_on_the_E3xx_USRP_-_Buildi=
ng_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
>> >> to cross compile GnuRadio on my Ubuntu box, but the cmake failed
>> >> because the OE environment was from 2016 and had old library version=
s=2E
>> >>
>> >> I could really use some suggestions on how to get a more modern
>> >> GnuRadio (3=2E9+) on the E310=2E
>> >>
>> >> Thanks=2E
>> >> Rich
>> > Here's a direct link to the images:
>> >
>> > https://files=2Eettus=2Ecom/binaries/cache/e3xx/meta-ettus-v4=2E3=2E0=
=2E0/
>> >
>> >
>> > That image includes GR 3=2E8=2E3
>> >
>> >
>> >>
>> >> On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein <rich@ourowndomain=2Ec=
om>
>> >> wrote:
>> >>
>> >>     I'd like to run GR 3=2E9 or later on the E310=2E  Is there a
>> >>     documented process to upgrade GR on the E310?
>> >>
>> >>     Thanks=2E
>> >>     Rich
>> >>
>> >>
>> >> _______________________________________________
>> >> USRP-users mailing list --usrp-users@lists=2Eettus=2Ecom
>> >> To unsubscribe send an email tousrp-users-leave@lists=2Eettus=2Ecom
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists=2Eettus=2Ecom
>> > To unsubscribe send an email to usrp-users-leave@lists=2Eettus=2Ecom
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists=2Eettus=2Ecom
>> To unsubscribe send an email to usrp-users-leave@lists=2Eettus=2Ecom
>>

------IPRJ3FHUVNRLMAPAC285S3DG526KAK
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Yeah, I can outline the path that needs taking, bu=
t it helps to have the basic skillet=2E Mostly I'm hoping someone solved th=
e 3=2E10 on e300 and will chime in=2E<br><br>Philip<br><br><div class=3D"gm=
ail_quote">On November 4, 2022 4:42:31 PM MDT, Rich Gopstein &lt;rich@ourow=
ndomain=2Ecom&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin: =
0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding-lef=
t: 1ex;">
<div dir=3D"ltr">Thanks=2E&nbsp; I'll take a look, though I suspect that i=
s beyond my abilities=2E=2E=2E<div><br></div><div>Rich</div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Fri, Nov 4, 2022 at 8:49 AM Philip Balister &lt;<a href=3D"mailto:philip=
@balister=2Eorg">philip@balister=2Eorg</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">Random git links that might help:<b=
r>
<br>
<a href=3D"https://github=2Ecom/balister/sdr-build/tree/dunfell-ettus" rel=
=3D"noreferrer" target=3D"_blank">https://github=2Ecom/balister/sdr-build/t=
ree/dunfell-ettus</a><br>
<br>
This will build a file system based of a Yocto Project branch that is <br>
still supported=2E It does a a gcc version that causes fftw failures <br>
though=2E This hasn't been updated in a couple of years, so it does need <=
br>
updating to collect bug and security fixes=2E<br>
<br>
<a href=3D"https://github=2Ecom/balister/meta-sdr/tree/dunfell-3=2E10" rel=
=3D"noreferrer" target=3D"_blank">https://github=2Ecom/balister/meta-sdr/tr=
ee/dunfell-3=2E10</a><br>
<br>
Contains work to get gnuradio-3=2E10 building against the YP Dunfell <br>
branch=2E Still needs some cleanup=2E Also I need to break out a layer to =
<br>
update the gcc version so fftw works=2E This actually happen, but is a <br=
>
spare time task :)<br>
<br>
All of the above likely need uhd recipe updates=2E<br>
<br>
So, basically the pieces are available to put gnuradio-3=2E10 on the E3XX =
<br>
series are known, they just need someone to do the work to make it happen=
=2E<br>
<br>
Philip<br>
<br>
On 11/2/22 19:05, Marcus D=2E Leech wrote:<br>
&gt; On 02/11/2022 16:39, Rich Gopstein wrote:<br>
&gt;&gt; I tried following the instructions in here: <br>
&gt;&gt; <a href=3D"https://kb=2Eettus=2Ecom/Software_Development_on_the_E=
3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source" rel=3D"no=
referrer" target=3D"_blank">https://kb=2Eettus=2Ecom/Software_Development_o=
n_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source</a>=
<br>
&gt;&gt; to cross compile GnuRadio on my Ubuntu box, but the cmake failed =
<br>
&gt;&gt; because&nbsp;the OE environment was from 2016 and had old library=
 versions=2E<br>
&gt;&gt;<br>
&gt;&gt; I could really use some suggestions on how to get a more modern <=
br>
&gt;&gt; GnuRadio (3=2E9+) on the E310=2E<br>
&gt;&gt;<br>
&gt;&gt; Thanks=2E<br>
&gt;&gt; Rich<br>
&gt; Here's a direct link to the images:<br>
&gt; <br>
&gt; <a href=3D"https://files=2Eettus=2Ecom/binaries/cache/e3xx/meta-ettus=
-v4=2E3=2E0=2E0/" rel=3D"noreferrer" target=3D"_blank">https://files=2Eettu=
s=2Ecom/binaries/cache/e3xx/meta-ettus-v4=2E3=2E0=2E0/</a><br>
&gt; <br>
&gt; <br>
&gt; That image includes GR 3=2E8=2E3<br>
&gt; <br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein &lt;<a href=3D"mail=
to:rich@ourowndomain=2Ecom" target=3D"_blank">rich@ourowndomain=2Ecom</a>&g=
t; <br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;I'd like to run GR 3=2E9 or later on the E310=
=2E&nbsp; Is there a<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;documented process to upgrade GR on the E310?<=
br>
&gt;&gt;<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Thanks=2E<br>
&gt;&gt;&nbsp; &nbsp; &nbsp;Rich<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list --<a href=3D"mailto:usrp-users@lists=2Eet=
tus=2Ecom" target=3D"_blank">usrp-users@lists=2Eettus=2Ecom</a><br>
&gt;&gt; To unsubscribe send an email <a href=3D"mailto:tousrp-users-leave=
@lists=2Eettus=2Ecom" target=3D"_blank">tousrp-users-leave@lists=2Eettus=2E=
com</a><br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=2Eettus=
=2Ecom" target=3D"_blank">usrp-users@lists=2Eettus=2Ecom</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@li=
sts=2Eettus=2Ecom" target=3D"_blank">usrp-users-leave@lists=2Eettus=2Ecom</=
a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=2Eettus=2Eco=
m" target=3D"_blank">usrp-users@lists=2Eettus=2Ecom</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists=
=2Eettus=2Ecom" target=3D"_blank">usrp-users-leave@lists=2Eettus=2Ecom</a><=
br>
</blockquote></div>
</blockquote></div></body></html>
------IPRJ3FHUVNRLMAPAC285S3DG526KAK--

--===============6310179871182992204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6310179871182992204==--
