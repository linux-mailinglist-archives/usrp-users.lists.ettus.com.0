Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A94524A736
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 18:41:26 +0200 (CEST)
Received: from [::1] (port=36680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdHAj-0005IM-Es; Tue, 18 Jun 2019 12:41:25 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:39401)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ssibio2@gmail.com>) id 1hdHAe-00055Q-Jw
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 12:41:20 -0400
Received: by mail-io1-f54.google.com with SMTP id r185so25371220iod.6
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 09:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zMvjmwmwtFgWbK5g+lMYWnxGkPboNbhnxLP+8ZvRpOM=;
 b=NYYlvz17OaPOM6yNqFwOhIdxFAflqyEv2ctob6qAa9s3pvazwOA+0+mClWrvhHispC
 EvN4Qw8hPSGCG21Cl8XXj79ElnIVV9IfE2uj+JdKlkDvecNBb8HFUTaGQQ6TUMH+7R8I
 7uMTNXUqPOugq3LUrOaGBts/8yaJ7Gru4fsCI9WkNuAtkz3hsZrYUvm3CO3pp0D31DgA
 6j9OxXboGVC75SM+mqFzrjiQzW15muyflU2pfocukm8pnfz1Gn3p3cQwZH7Zqnr7BEph
 bNQRtQeg9xB7iC7YRyHRnQAcE316R0ZNh3Jdyc3w9s2onVHHx6B7X/zmZG5cla+QCBXB
 8sMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zMvjmwmwtFgWbK5g+lMYWnxGkPboNbhnxLP+8ZvRpOM=;
 b=p/peXZju6J61YHI9MitWzY+fMp70z3nV7jKFgxtkqMwubGis+fI4lb1MqCTmt/xWca
 PIbMKPihGnGImprZKLY7ZNWQxiSumxcnCGvAuw2b3bA8w5rPV+FpZEN+Ffg6P42Bidmx
 MDq0z7/rq63QIaKLTjvSZIeXCjYzFow8P1IjU1kBIuhf1APVrPRC/6v/eJedj70RgaXb
 eC6KIUYJGfWrdNapj7CGOz3uS1xJt4lhZtJ/q5SFNe+k17jvX1TYjB38o9Hk26Mmpkvv
 Ki5//UvFreBTenNZeYrHbv8yy/iCVeMxQSkfNXTXfZd41UyAgkv6tGhhBvqUzngh7wYc
 ZxTw==
X-Gm-Message-State: APjAAAVRzaZjHGnyQlpRcUjBJ/eqLt+sLBXbKZGevob9JQvemRXYjKXo
 CiJs3g0sKenoRe2jssyK48NP9HQ9nhG9CuCOgos=
X-Google-Smtp-Source: APXvYqxpUx5iybTZtHopcMx7xzkDBXGKcPMXcZc/0HP+a+RgyTjQ344URRwijFR9xLKwQ94kTaVnxHfh+sbhDD0Qb4Q=
X-Received: by 2002:a02:457:: with SMTP id 84mr86585791jab.99.1560876039987;
 Tue, 18 Jun 2019 09:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.55.1560787202.16100.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
 <c0667c6a-e02c-46da-87f6-48519f4836f3@www.fastmail.com>
 <CALSxwQHdDYDR87XCtnKpG=w_395E_fqq5PZEX8GGdDvroigbzQ@mail.gmail.com>
 <CA+JMMq_mmfhpYqRm7DNrKcnC51m1AEmXRh_8u-ysmsha2U5Y6w@mail.gmail.com>
In-Reply-To: <CA+JMMq_mmfhpYqRm7DNrKcnC51m1AEmXRh_8u-ysmsha2U5Y6w@mail.gmail.com>
Date: Tue, 18 Jun 2019 17:39:52 +0200
Message-ID: <CALSxwQG9DH-C=H=JOoZe+4mv=Y+CD0TSEjAV866CUAZQA6-oSQ@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] Waveform Shape Not Accurate
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
From: Simona Sibio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Simona Sibio <ssibio2@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6095760355919022660=="
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

--===============6095760355919022660==
Content-Type: multipart/alternative; boundary="000000000000e6e891058b9bc55a"

--000000000000e6e891058b9bc55a
Content-Type: text/plain; charset="UTF-8"

Thank you for the assistance.
I tried to change the amplitude but the amplitude and frequency are not
accurate in the oscilloscope yet.
If I lower the amplitude, the S/N is lowered then it is worst.

Best Regards,

Simona


Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster <bistromath@gmail.com>
ha scritto:

> Waveform source amplitude is too high. Turn it down to <0.4.
>
> On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Michael,
>>
>> thank you for your interest.
>>
>> I have two N200 and each one have two daughterboard UBX-40; the
>> transmitters are connected by coaxial cable to an oscilloscope
>> (Rhode&Schwarz RTO2064) to check the waveform.
>> The version of UHD is 3.13.0.
>>
>> I tried to send a constant signal using the flowgraph (Screenshot from
>> 2019-06-18 14-56-57) in attachment on GNU radio Companion 3.7.13.4, and on
>> the oscilloscope I saw this "IMG_6586".
>> Also, I tried to generate a constant signal in Simulink model (16-42-17 &
>> 16-14-04) on Matlab R2019a but, on the oscilloscope, I saw this "IMG_6584".
>>
>> I tried to send a sine signal with the Simulink model in attachment
>> (16-46-10) and, on the oscilloscope, I saw this "IMG_6583".
>> Also I tried to generate the sine signal with GNU radio (17-08-58) and I
>> saw this "IMG_6588".
>>
>> It is possible to see how the amplitude and frequency change in every
>> case, I need to obtain an accurate signal because I have to measure the
>> amplitude and phase in a particular point in the circuit.
>> And in the previous email, I added that the problem increases when I
>> lower the carrier frequency. All these measures were taken with a carrier
>> frequency at 3 GHz, but if I change the fc at 1 GHz the shape is worst,
>> e.g. IMG_6589.
>>
>> Thank you in advance.
>>
>> Best Regards,
>>
>> Simona
>>
>>
>> Il giorno mar 18 giu 2019 alle ore 15:34 Michael Dickens <
>> michael.dickens@ettus.com> ha scritto:
>>
>>> Hi Simona - Can you please educate us as to a few items?
>>>
>>> * your setup: you have an N200 + some daughterboard (which one) + some
>>> spectrum analyzer (which one), connected ?somehow? -> are you doing actual
>>> wireless Tx -> Rx, or do you have a cable hooked up between the N200 &
>>> spectrum analyzer?
>>>
>>> * what waveform you're trying to generate, and what is the actual
>>> flowgraph you're using for GNU Radio? how are you generating the waveform
>>> in MATLAB?
>>>
>>> * which version of GNU Radio and UHD are you trying to use?
>>>
>>> * which version of MATLAB and it's UHD are you trying to use?
>>>
>>> The above might help someone to diagnose your issue ... without it, we
>>> can make some guesses but not much in the way of specifics.
>>>
>>> Please remember to "reply all", so that others can see your response and
>>> be able to chime in to provide help. - MLD
>>>
>>> On Tue, Jun 18, 2019, at 8:42 AM, Simona Sibio via USRP-users wrote:
>>>
>>> Dear Sir/Madam,
>>>
>>> I am Simona Sibio, a student in Heriot Watt University.
>>> I am working with USRPs both on Matlab and on Gnuradio, and with both
>>> softwares I have the same problem: the shape (generated by
>>> N200+daughterboard 10 MHz to 6 GHz) is not accurate, in attacched some
>>> photos.
>>> At 1 GHz, the shape is worst than when the carrier frequency is 3GHz.
>>> It is not possible to measure the amplitude and frequency because, also
>>> at 3 GHz, it is not stable.
>>> Could you help me?
>>>
>>> Thank you in advance.
>>>
>>> Best Regards,
>>>
>>> Simona
>>>
>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000e6e891058b9bc55a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for the assistance.</div><div>I tried to ch=
ange the amplitude but the amplitude and frequency are not accurate in the =
oscilloscope yet.</div><div>If I lower the amplitude, the S/N is lowered th=
en it is worst.</div><div><br></div><div>Best Regards,</div><div><br></div>=
<div>Simona</div><div><br></div></div><br><div class=3D"gmail_quote"><div c=
lass=3D"gmail_attr" dir=3D"ltr">Il giorno mar 18 giu 2019 alle ore 18:33 Ni=
ck Foster &lt;<a href=3D"mailto:bistromath@gmail.com">bistromath@gmail.com<=
/a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-color:rgb(204,204,204);b=
order-left-width:1px;border-left-style:solid"><div dir=3D"ltr">Waveform sou=
rce amplitude is too high. Turn it down to &lt;0.4.<br></div><br><div class=
=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">On Tue, Jun 18, 2019=
 at 9:31 AM Simona Sibio via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;padding-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px=
;border-left-style:solid"><div dir=3D"ltr"><div>Hi=C2=A0Michael,</div><div>=
<br></div><div>thank you for your interest.</div><div><br></div><div>I have=
 two N200 and each one have two daughterboard UBX-40; the transmitters are =
connected by coaxial cable to an oscilloscope (Rhode&amp;Schwarz RTO2064) t=
o check the waveform.</div><div>The version of UHD is 3.13.0.<br></div><div=
><br></div><div>I tried to send a constant signal using the flowgraph (Scre=
enshot from 2019-06-18 14-56-57) in attachment on GNU radio Companion 3.7.1=
3.4, and on the oscilloscope I saw this &quot;IMG_6586&quot;.</div><div>Als=
o, I tried to generate a constant signal in Simulink model (16-42-17 &amp; =
16-14-04) on Matlab R2019a but, on the oscilloscope, I saw this &quot;IMG_6=
584&quot;.</div><div><br></div><div>I tried to send a sine signal with the =
Simulink model in attachment (16-46-10) and, on the oscilloscope, I saw thi=
s &quot;IMG_6583&quot;.</div><div>Also I tried to generate the sine signal =
with GNU radio (17-08-58) and I saw this &quot;IMG_6588&quot;.<br></div><di=
v><br></div><div>It is possible to see how the amplitude and frequency chan=
ge in every case, I need to=20
obtain an accurate signal because I have to measure the amplitude and=20
phase in a particular point in the circuit.</div><div>And in the previous e=
mail, I added that the problem increases when I lower the carrier frequency=
. All these measures were taken with a carrier frequency at 3 GHz, but if I=
 change the fc at 1 GHz the shape is worst, e.g. IMG_6589.</div><div><br></=
div><div>Thank you in advance.</div><div><br></div><div>Best Regards,</div>=
<div><br></div><div>Simona<br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">Il giorno mar 18 giu 201=
9 alle ore 15:34 Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettu=
s.com" target=3D"_blank">michael.dickens@ettus.com</a>&gt; ha scritto:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;pa=
dding-left:1ex;border-left-color:rgb(204,204,204);border-left-width:1px;bor=
der-left-style:solid"><u></u><div><div style=3D"font-family:Arial">Hi=C2=A0=
Simona - Can you please educate us as to a few items?<br></div><div style=
=3D"font-family:Arial"><br></div><div style=3D"font-family:Arial">* your se=
tup: you have an N200 + some daughterboard (which one) + some spectrum anal=
yzer (which one), connected ?somehow? -&gt; are you doing actual wireless T=
x -&gt; Rx, or do you have a cable hooked up between the N200 &amp; spectru=
m analyzer?<br></div><div style=3D"font-family:Arial"><br></div><div style=
=3D"font-family:Arial">* what waveform you&#39;re trying to generate, and w=
hat is the actual flowgraph you&#39;re using for GNU Radio? how are you gen=
erating the waveform in MATLAB?<br></div><div style=3D"font-family:Arial"><=
br></div><div style=3D"font-family:Arial">* which version of GNU Radio and =
UHD are you trying to use?<br></div><div style=3D"font-family:Arial"><br></=
div><div style=3D"font-family:Arial">* which version of MATLAB and it&#39;s=
 UHD are you trying to use?<br></div><div style=3D"font-family:Arial"><br><=
/div><div style=3D"font-family:Arial">The above might help someone to diagn=
ose your issue ... without it, we can make some guesses but not much in the=
 way of specifics.<br></div><div style=3D"font-family:Arial"><br></div><div=
 style=3D"font-family:Arial">Please remember to &quot;reply all&quot;, so t=
hat others can see your response and be able to chime in to provide help. -=
 MLD</div><div style=3D"font-family:Arial"><br></div><div>On Tue, Jun 18, 2=
019, at 8:42 AM, Simona Sibio via USRP-users wrote:<br></div><blockquote id=
=3D"gmail-m_8797002318478984421gmail-m_1447609992642899520gmail-m_507246746=
5448257050gmail-m_-4577347644377748938gmail-m_8370323799690171113gmail-m_38=
31871693442919435gmail-m_5647440429440147896gmail-m_9074622197958603082gmai=
l-m_-9697987215180129qt" type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line-he=
ight:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-we=
ight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-c=
olor:transparent">Dear Sir/Madam,<br></div><div style=3D"text-align:left;co=
lor:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;l=
etter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-seri=
f;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;whit=
e-space:normal;font-stretch:100%;background-color:transparent"><br></div><d=
iv style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line-he=
ight:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-we=
ight:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-c=
olor:transparent">I am Simona Sibio, a student in Heriot Watt University.=
=C2=A0<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-tran=
sform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overfl=
ow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-st=
yle:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch=
:100%;background-color:transparent">I am working with USRPs both on Matlab =
and on Gnuradio, and with both softwares I have the same problem: the shape=
 (generated by N200+daughterboard 10 MHz to 6 GHz) is not accurate, in atta=
cched some photos.<br></div><div style=3D"text-align:left;color:rgb(34,34,3=
4);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:n=
ormal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.=
33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;=
font-stretch:100%;background-color:transparent">At 1 GHz, the shape is wors=
t than when the carrier frequency is 3GHz.<br></div><div style=3D"text-alig=
n:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-ind=
ent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,=
sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing=
:0px;white-space:normal;font-stretch:100%;background-color:transparent">It =
is not possible to measure the amplitude and frequency because, also at 3 G=
Hz, it is not stable.<br></div><div style=3D"text-align:left;color:rgb(34,3=
4,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacin=
g:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:=
13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:norm=
al;font-stretch:100%;background-color:transparent">Could you help me?<br></=
div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;l=
ine-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;f=
ont-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;f=
ont-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;backgr=
ound-color:transparent"><br></div><div style=3D"text-align:left;color:rgb(3=
4,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spa=
cing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-si=
ze:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:n=
ormal;font-stretch:100%;background-color:transparent">Thank you in advance.=
<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:=
none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:vis=
ible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:no=
rmal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;=
background-color:transparent"><br></div><div style=3D"text-align:left;color=
:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;lett=
er-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;f=
ont-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-s=
pace:normal;font-stretch:100%;background-color:transparent">Best Regards,<b=
r></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:no=
ne;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visib=
le;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:norm=
al;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;ba=
ckground-color:transparent"><br></div><div style=3D"text-align:left;color:r=
gb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter=
-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;fon=
t-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-spa=
ce:normal;font-stretch:100%;background-color:transparent">Simona<br></div><=
/div></div></blockquote><div style=3D"font-family:Arial"><br></div></div></=
blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e6e891058b9bc55a--


--===============6095760355919022660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6095760355919022660==--

