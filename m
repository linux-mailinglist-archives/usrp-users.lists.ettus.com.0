Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DD94B790
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 14:01:02 +0200 (CEST)
Received: from [::1] (port=58602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdZGo-0003gA-JO; Wed, 19 Jun 2019 08:00:54 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:39745)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hdZGk-0003bU-Gs
 for USRP-users@lists.ettus.com; Wed, 19 Jun 2019 08:00:50 -0400
Received: by mail-io1-f51.google.com with SMTP id r185so31523812iod.6
 for <USRP-users@lists.ettus.com>; Wed, 19 Jun 2019 05:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6vIFRm+yN5+lnLyLv9oRWwWgzDhAsm4l+Of2GvpdGi8=;
 b=TC51J8ljwaWZCl8cnt2duSt8LRPMkdhFneaHw6k71CYzid2eDlXEj25fbBPkfAwj1I
 0En/G9vYMj4hGX94qopmwk/fUUi6Npep981GhfQ66i7JlZOc/dT2WL0P75cqhu0gprK2
 Gswos/vQgd+pETmvWxx08bjX1EVJlvC8TG7/Ta5iy/2U23mG7qM4rqZ9C3EMstwzP+5B
 w1dcSTAUk0rIvo3jeOKK8Iv5Q1OUdv4KfFrJOSgwCAHRce1Ab2b1duLh5SMfgVBLgKMM
 ZRYDqzeMKs9RVYD31AJlJ7YdGw4j7G0Kmqg0nwH3lrJBYm0/IKWYEZR73icMaSLKW/Dp
 e93g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6vIFRm+yN5+lnLyLv9oRWwWgzDhAsm4l+Of2GvpdGi8=;
 b=lcLIzsc1duThj0kRg9T4JyHlyytheeQY+gZscVzK5wZvnTTsdLhwDK2HYN2Vi5pbv3
 pc16s+wBRfku7PfxYJfcC4LhUHNmUmoYlXTcoEEIdLYdifB82LLWb59H2ll6jhnlVSEQ
 sd2flFHwHiV4z1RKneu3nZrVsqQR7D2JQyeM9xPJTp/LaXnhHc8qeRNv/SoXtMVNEMH7
 V8JKdqOUbG5tpc/338Uc+sxSME3YCoPRzytBX5uXDeDEndIeNFjTGteP/G7uo1jCVOYg
 nxzzmCZGpLUL1bSnGsd166jNM+uDqHC4lfqSNyottiRmZgzpTxA/vJyhzohkO8L5YrLH
 fcmg==
X-Gm-Message-State: APjAAAVPwM38ogHa3A0nw2NNJrM7VEbg5dKDH0IRhRID/k4JfN6jBzKn
 QJMm5ClyQtMtbc4CYfxr806XrP9aScJdTXrk/kk=
X-Google-Smtp-Source: APXvYqxtPfoLhrG4kcAvCNTgclDpRNrWr3XHOEL8np6Meuf+kinZSr7ueJigmZ+dpwc2X41kISqBeN97HCmG/R0TdJ8=
X-Received: by 2002:a02:a493:: with SMTP id d19mr37193504jam.22.1560945608915; 
 Wed, 19 Jun 2019 05:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.55.1560787202.16100.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
 <c0667c6a-e02c-46da-87f6-48519f4836f3@www.fastmail.com>
 <CALSxwQHdDYDR87XCtnKpG=w_395E_fqq5PZEX8GGdDvroigbzQ@mail.gmail.com>
 <CA+JMMq_mmfhpYqRm7DNrKcnC51m1AEmXRh_8u-ysmsha2U5Y6w@mail.gmail.com>
 <CALSxwQG9DH-C=H=JOoZe+4mv=Y+CD0TSEjAV866CUAZQA6-oSQ@mail.gmail.com>
 <CA+JMMq8zAzo9cU=+ZWiLyWVQuchhMBoOWSB_+o895ZyiyKVfhg@mail.gmail.com>
 <CALSxwQG5rLQnqoQZBR-c7syxV8ZaT7PdOXYCv=bvH0cv62Ls_g@mail.gmail.com>
In-Reply-To: <CALSxwQG5rLQnqoQZBR-c7syxV8ZaT7PdOXYCv=bvH0cv62Ls_g@mail.gmail.com>
Date: Wed, 19 Jun 2019 06:59:56 -0500
Message-ID: <CA+JMMq-=_nt8EzY4HachAiS8rCm1ffKT3BdX8w_gZp2v92GL_Q@mail.gmail.com>
To: Simona Sibio <ssibio2@gmail.com>
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6041709499938679164=="
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

--===============6041709499938679164==
Content-Type: multipart/alternative; boundary="000000000000887fcc058babf86b"

--000000000000887fcc058babf86b
Content-Type: text/plain; charset="UTF-8"

Can you post the flowgraph you're using again? If you changed transmit gain
and amplitude, the result should have changed in amplitude, while the image
you just sent has the fame magnitude the last one did.

On Wed, Jun 19, 2019, 5:03 AM Simona Sibio <ssibio2@gmail.com> wrote:

> Thank you very much.
> I tried to send a signal with this features, but the result is the same
> (IMG_6590).
> I tried with every amplitude and every gain (Screenshot from 2019).
> Before, I thought that it was a problem of reference signal and I changed
> it but the situation is not changed.
>
> Thank you in advance for your help.
>
> Best Regards,
>
> Simona
>
> Il giorno mar 18 giu 2019 alle ore 18:06 Nick Foster <bistromath@gmail.com>
> ha scritto:
>
>> Turn up the transmit gain on the USRP sink. Start with ~40dB and transmit
>> amplitude 0.3.
>>
>> Nick
>>
>> On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio <ssibio2@gmail.com> wrote:
>>
>>> Thank you for the assistance.
>>> I tried to change the amplitude but the amplitude and frequency are not
>>> accurate in the oscilloscope yet.
>>> If I lower the amplitude, the S/N is lowered then it is worst.
>>>
>>> Best Regards,
>>>
>>> Simona
>>>
>>>
>>> Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster <
>>> bistromath@gmail.com> ha scritto:
>>>
>>>> Waveform source amplitude is too high. Turn it down to <0.4.
>>>>
>>>> On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi Michael,
>>>>>
>>>>> thank you for your interest.
>>>>>
>>>>> I have two N200 and each one have two daughterboard UBX-40; the
>>>>> transmitters are connected by coaxial cable to an oscilloscope
>>>>> (Rhode&Schwarz RTO2064) to check the waveform.
>>>>> The version of UHD is 3.13.0.
>>>>>
>>>>> I tried to send a constant signal using the flowgraph (Screenshot from
>>>>> 2019-06-18 14-56-57) in attachment on GNU radio Companion 3.7.13.4, and on
>>>>> the oscilloscope I saw this "IMG_6586".
>>>>> Also, I tried to generate a constant signal in Simulink model
>>>>> (16-42-17 & 16-14-04) on Matlab R2019a but, on the oscilloscope, I saw this
>>>>> "IMG_6584".
>>>>>
>>>>> I tried to send a sine signal with the Simulink model in attachment
>>>>> (16-46-10) and, on the oscilloscope, I saw this "IMG_6583".
>>>>> Also I tried to generate the sine signal with GNU radio (17-08-58) and
>>>>> I saw this "IMG_6588".
>>>>>
>>>>> It is possible to see how the amplitude and frequency change in every
>>>>> case, I need to obtain an accurate signal because I have to measure the
>>>>> amplitude and phase in a particular point in the circuit.
>>>>> And in the previous email, I added that the problem increases when I
>>>>> lower the carrier frequency. All these measures were taken with a carrier
>>>>> frequency at 3 GHz, but if I change the fc at 1 GHz the shape is worst,
>>>>> e.g. IMG_6589.
>>>>>
>>>>> Thank you in advance.
>>>>>
>>>>> Best Regards,
>>>>>
>>>>> Simona
>>>>>
>>>>>
>>>>> Il giorno mar 18 giu 2019 alle ore 15:34 Michael Dickens <
>>>>> michael.dickens@ettus.com> ha scritto:
>>>>>
>>>>>> Hi Simona - Can you please educate us as to a few items?
>>>>>>
>>>>>> * your setup: you have an N200 + some daughterboard (which one) +
>>>>>> some spectrum analyzer (which one), connected ?somehow? -> are you doing
>>>>>> actual wireless Tx -> Rx, or do you have a cable hooked up between the N200
>>>>>> & spectrum analyzer?
>>>>>>
>>>>>> * what waveform you're trying to generate, and what is the actual
>>>>>> flowgraph you're using for GNU Radio? how are you generating the waveform
>>>>>> in MATLAB?
>>>>>>
>>>>>> * which version of GNU Radio and UHD are you trying to use?
>>>>>>
>>>>>> * which version of MATLAB and it's UHD are you trying to use?
>>>>>>
>>>>>> The above might help someone to diagnose your issue ... without it,
>>>>>> we can make some guesses but not much in the way of specifics.
>>>>>>
>>>>>> Please remember to "reply all", so that others can see your response
>>>>>> and be able to chime in to provide help. - MLD
>>>>>>
>>>>>> On Tue, Jun 18, 2019, at 8:42 AM, Simona Sibio via USRP-users wrote:
>>>>>>
>>>>>> Dear Sir/Madam,
>>>>>>
>>>>>> I am Simona Sibio, a student in Heriot Watt University.
>>>>>> I am working with USRPs both on Matlab and on Gnuradio, and with both
>>>>>> softwares I have the same problem: the shape (generated by
>>>>>> N200+daughterboard 10 MHz to 6 GHz) is not accurate, in attacched some
>>>>>> photos.
>>>>>> At 1 GHz, the shape is worst than when the carrier frequency is 3GHz.
>>>>>> It is not possible to measure the amplitude and frequency because,
>>>>>> also at 3 GHz, it is not stable.
>>>>>> Could you help me?
>>>>>>
>>>>>> Thank you in advance.
>>>>>>
>>>>>> Best Regards,
>>>>>>
>>>>>> Simona
>>>>>>
>>>>>>
>>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--000000000000887fcc058babf86b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you post the flowgraph you&#39;re using again? If you=
 changed transmit gain and amplitude, the result should have changed in amp=
litude, while the image you just sent has the fame magnitude the last one d=
id.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Jun 19, 2019, 5:03 AM Simona Sibio &lt;<a href=3D"mailto:s=
sibio2@gmail.com">ssibio2@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div>Thank you very much. <br></div><div>I=
 tried to send a signal with this features, but the result is the same (IMG=
_6590).</div><div>I tried with every amplitude and every gain (Screenshot f=
rom 2019).</div><div>Before, I thought that it was a problem of reference s=
ignal and I changed it but the situation is not changed.</div><div><br></di=
v><div>Thank you in advance for your help.</div><div><br></div><div>Best Re=
gards,</div><div><br></div><div>Simona<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno mar 18 giu 2019 a=
lle ore 18:06 Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">bistromath@gmail.com</a>&gt; ha scritto:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Turn up the transmit gain on the USRP sink. Start with ~40dB and transm=
it amplitude 0.3.</div><div><br></div><div>Nick<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 18, 20=
19 at 9:40 AM Simona Sibio &lt;<a href=3D"mailto:ssibio2@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">ssibio2@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank=
 you for the assistance.</div><div>I tried to change the amplitude but the =
amplitude and frequency are not accurate in the oscilloscope yet.</div><div=
>If I lower the amplitude, the S/N is lowered then it is worst.</div><div><=
br></div><div>Best Regards,</div><div><br></div><div>Simona</div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D"=
ltr">Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster &lt;<a href=3D"ma=
ilto:bistromath@gmail.com" target=3D"_blank" rel=3D"noreferrer">bistromath@=
gmail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left:1px solid rgb(=
204,204,204)"><div dir=3D"ltr">Waveform source amplitude is too high. Turn =
it down to &lt;0.4.<br></div><br><div class=3D"gmail_quote"><div class=3D"g=
mail_attr" dir=3D"ltr">On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
 rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding-lef=
t:1ex;border-left:1px solid rgb(204,204,204)"><div dir=3D"ltr"><div>Hi=C2=
=A0Michael,</div><div><br></div><div>thank you for your interest.</div><div=
><br></div><div>I have two N200 and each one have two daughterboard UBX-40;=
 the transmitters are connected by coaxial cable to an oscilloscope (Rhode&=
amp;Schwarz RTO2064) to check the waveform.</div><div>The version of UHD is=
 3.13.0.<br></div><div><br></div><div>I tried to send a constant signal usi=
ng the flowgraph (Screenshot from 2019-06-18 14-56-57) in attachment on GNU=
 radio Companion 3.7.13.4, and on the oscilloscope I saw this &quot;IMG_658=
6&quot;.</div><div>Also, I tried to generate a constant signal in Simulink =
model (16-42-17 &amp; 16-14-04) on Matlab R2019a but, on the oscilloscope, =
I saw this &quot;IMG_6584&quot;.</div><div><br></div><div>I tried to send a=
 sine signal with the Simulink model in attachment (16-46-10) and, on the o=
scilloscope, I saw this &quot;IMG_6583&quot;.</div><div>Also I tried to gen=
erate the sine signal with GNU radio (17-08-58) and I saw this &quot;IMG_65=
88&quot;.<br></div><div><br></div><div>It is possible to see how the amplit=
ude and frequency change in every case, I need to=20
obtain an accurate signal because I have to measure the amplitude and=20
phase in a particular point in the circuit.</div><div>And in the previous e=
mail, I added that the problem increases when I lower the carrier frequency=
. All these measures were taken with a carrier frequency at 3 GHz, but if I=
 change the fc at 1 GHz the shape is worst, e.g. IMG_6589.</div><div><br></=
div><div>Thank you in advance.</div><div><br></div><div>Best Regards,</div>=
<div><br></div><div>Simona<br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">Il giorno mar 18 giu 201=
9 alle ore 15:34 Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettu=
s.com" target=3D"_blank" rel=3D"noreferrer">michael.dickens@ettus.com</a>&g=
t; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;padding-left:1ex;border-left:1px solid rgb(204,204,204)"><=
u></u><div><div style=3D"font-family:Arial">Hi=C2=A0Simona - Can you please=
 educate us as to a few items?<br></div><div style=3D"font-family:Arial"><b=
r></div><div style=3D"font-family:Arial">* your setup: you have an N200 + s=
ome daughterboard (which one) + some spectrum analyzer (which one), connect=
ed ?somehow? -&gt; are you doing actual wireless Tx -&gt; Rx, or do you hav=
e a cable hooked up between the N200 &amp; spectrum analyzer?<br></div><div=
 style=3D"font-family:Arial"><br></div><div style=3D"font-family:Arial">* w=
hat waveform you&#39;re trying to generate, and what is the actual flowgrap=
h you&#39;re using for GNU Radio? how are you generating the waveform in MA=
TLAB?<br></div><div style=3D"font-family:Arial"><br></div><div style=3D"fon=
t-family:Arial">* which version of GNU Radio and UHD are you trying to use?=
<br></div><div style=3D"font-family:Arial"><br></div><div style=3D"font-fam=
ily:Arial">* which version of MATLAB and it&#39;s UHD are you trying to use=
?<br></div><div style=3D"font-family:Arial"><br></div><div style=3D"font-fa=
mily:Arial">The above might help someone to diagnose your issue ... without=
 it, we can make some guesses but not much in the way of specifics.<br></di=
v><div style=3D"font-family:Arial"><br></div><div style=3D"font-family:Aria=
l">Please remember to &quot;reply all&quot;, so that others can see your re=
sponse and be able to chime in to provide help. - MLD</div><div style=3D"fo=
nt-family:Arial"><br></div><div>On Tue, Jun 18, 2019, at 8:42 AM, Simona Si=
bio via USRP-users wrote:<br></div><blockquote id=3D"m_1676310887229372130g=
mail-m_-7594402011322132257gmail-m_-8727958967599003955gmail-m_110959359567=
3867528gmail-m_8797002318478984421gmail-m_1447609992642899520gmail-m_507246=
7465448257050gmail-m_-4577347644377748938gmail-m_8370323799690171113gmail-m=
_3831871693442919435gmail-m_5647440429440147896gmail-m_9074622197958603082g=
mail-m_-9697987215180129qt" type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"=
><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line=
-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font=
-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font=
-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;backgroun=
d-color:transparent">Dear Sir/Madam,<br></div><div style=3D"text-align:left=
;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0p=
x;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-s=
erif;font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;w=
hite-space:normal;font-stretch:100%;background-color:transparent"><br></div=
><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line=
-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font=
-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font=
-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;backgroun=
d-color:transparent">I am Simona Sibio, a student in Heriot Watt University=
.=C2=A0<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-tra=
nsform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overf=
low:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-s=
tyle:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretc=
h:100%;background-color:transparent">I am working with USRPs both on Matlab=
 and on Gnuradio, and with both softwares I have the same problem: the shap=
e (generated by N200+daughterboard 10 MHz to 6 GHz) is not accurate, in att=
acched some photos.<br></div><div style=3D"text-align:left;color:rgb(34,34,=
34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:=
normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13=
.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal=
;font-stretch:100%;background-color:transparent">At 1 GHz, the shape is wor=
st than when the carrier frequency is 3GHz.<br></div><div style=3D"text-ali=
gn:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text-in=
dent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvetica=
,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spacin=
g:0px;white-space:normal;font-stretch:100%;background-color:transparent">It=
 is not possible to measure the amplitude and frequency because, also at 3 =
GHz, it is not stable.<br></div><div style=3D"text-align:left;color:rgb(34,=
34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spaci=
ng:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size=
:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:nor=
mal;font-stretch:100%;background-color:transparent">Could you help me?<br><=
/div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;=
line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;=
font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;=
font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;backg=
round-color:transparent"><br></div><div style=3D"text-align:left;color:rgb(=
34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-sp=
acing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-s=
ize:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:=
normal;font-stretch:100%;background-color:transparent">Thank you in advance=
.<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform=
:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:vi=
sible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:n=
ormal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%=
;background-color:transparent"><br></div><div style=3D"text-align:left;colo=
r:rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;let=
ter-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;=
font-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-=
space:normal;font-stretch:100%;background-color:transparent">Best Regards,<=
br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:n=
one;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visi=
ble;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:nor=
mal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;b=
ackground-color:transparent"><br></div><div style=3D"text-align:left;color:=
rgb(34,34,34);text-transform:none;line-height:19.99px;text-indent:0px;lette=
r-spacing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;fo=
nt-size:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-sp=
ace:normal;font-stretch:100%;background-color:transparent">Simona<br></div>=
</div></div></blockquote><div style=3D"font-family:Arial"><br></div></div><=
/blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000887fcc058babf86b--


--===============6041709499938679164==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6041709499938679164==--

