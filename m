Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4414A7DE
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 19:07:12 +0200 (CEST)
Received: from [::1] (port=40448 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdHZc-0006LP-7O; Tue, 18 Jun 2019 13:07:08 -0400
Received: from mail-io1-f53.google.com ([209.85.166.53]:45673)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hdHZY-0006Ez-1B
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 13:07:04 -0400
Received: by mail-io1-f53.google.com with SMTP id e3so31430245ioc.12
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 10:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hifd59vVRRvq1aytV2pmaRENpmToKhg3u6CvoCIapGc=;
 b=tkvyCA1XJO092MrkeCZMSf1p8FYEKhqgCp6RwEAxeW3hvhbsyz4oriRS0MDyWCm6t4
 z3D8jpyH+6zWobJn+p5XfPkidX+IFkkYEIq9T3jPiE+ri9MBAoGy1S7gJOrog2/1sH0l
 U+J1/4bD8KRCwpCXLCT/1KVgo0JM3CKWALwPDWIbIR9T8xjKE+qshFN/TXQEaclLg6vC
 gs5jj/JPxwq+cn5dDRD4em25oZq0p+4TPpVecKfOlnUS+w5Hl4/0JkPqozVjfXAmVheE
 a/NpXETLzYknMfkK9s60qXAThn169HAM2c6JzLQ5J5dL37N3mlw0Rhh1EfBYsCTZf1Pd
 R7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hifd59vVRRvq1aytV2pmaRENpmToKhg3u6CvoCIapGc=;
 b=T1HHmBoDoIFQXHkC26QFjwqonrxNhbxAyn90VoJQka0+kCOtFLIGX2hiQUqsinCpbC
 yTAXaU3/iAz4vT0fmGTJszpdmntrN2+gBpkJrC32R024EF/teC6SZqVFw4JXPNJo8yMv
 66yNxvZNmQMI8c2F39z+yVDoIi7dHZyLkXhT59L8YXQR94ywDiVwOppDidWDa+0t/2BZ
 OMg2yeb6wywDjeS6IzxzzuGG7CiQF0HG8ofY4t4h+yzUY3nM07roWulmDy4LIwv16W6J
 vMxRhUTVNIc+O3lClgwbUhXGPdpAgqAI1oKnPeeyW7obBcl/irr842P3jdX4HgOaAtdt
 uC+Q==
X-Gm-Message-State: APjAAAVN4h89AeR5EzaJquiEyPBAUPjx7xtneuuN0HJ2Ct0wGJ4DVuQY
 BrlRQC+wLt/YEAtbM2JHNuVIMH4WObbWg+TUG4c=
X-Google-Smtp-Source: APXvYqyPYpqZzi2xFPFKaJXTflwdn2jP9w+6D5MNuxM/HqGmGdWyAn8d22ul1upC7OvbQ09xumxCI26A7nXad2qyYxU=
X-Received: by 2002:a02:a07:: with SMTP id 7mr5502754jaw.65.1560877582596;
 Tue, 18 Jun 2019 10:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.55.1560787202.16100.usrp-users_lists.ettus.com@lists.ettus.com>
 <CALSxwQFTeiix0DqsfcQSdeHVrtnakjNkjB=rANMHb-rmXK2OQg@mail.gmail.com>
 <c0667c6a-e02c-46da-87f6-48519f4836f3@www.fastmail.com>
 <CALSxwQHdDYDR87XCtnKpG=w_395E_fqq5PZEX8GGdDvroigbzQ@mail.gmail.com>
 <CA+JMMq_mmfhpYqRm7DNrKcnC51m1AEmXRh_8u-ysmsha2U5Y6w@mail.gmail.com>
 <CALSxwQG9DH-C=H=JOoZe+4mv=Y+CD0TSEjAV866CUAZQA6-oSQ@mail.gmail.com>
In-Reply-To: <CALSxwQG9DH-C=H=JOoZe+4mv=Y+CD0TSEjAV866CUAZQA6-oSQ@mail.gmail.com>
Date: Tue, 18 Jun 2019 10:03:14 -0700
Message-ID: <CA+JMMq8zAzo9cU=+ZWiLyWVQuchhMBoOWSB_+o895ZyiyKVfhg@mail.gmail.com>
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
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9023485113047577803=="
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

--===============9023485113047577803==
Content-Type: multipart/alternative; boundary="000000000000dbc0ba058b9c214a"

--000000000000dbc0ba058b9c214a
Content-Type: text/plain; charset="UTF-8"

Turn up the transmit gain on the USRP sink. Start with ~40dB and transmit
amplitude 0.3.

Nick

On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio <ssibio2@gmail.com> wrote:

> Thank you for the assistance.
> I tried to change the amplitude but the amplitude and frequency are not
> accurate in the oscilloscope yet.
> If I lower the amplitude, the S/N is lowered then it is worst.
>
> Best Regards,
>
> Simona
>
>
> Il giorno mar 18 giu 2019 alle ore 18:33 Nick Foster <bistromath@gmail.com>
> ha scritto:
>
>> Waveform source amplitude is too high. Turn it down to <0.4.
>>
>> On Tue, Jun 18, 2019 at 9:31 AM Simona Sibio via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Michael,
>>>
>>> thank you for your interest.
>>>
>>> I have two N200 and each one have two daughterboard UBX-40; the
>>> transmitters are connected by coaxial cable to an oscilloscope
>>> (Rhode&Schwarz RTO2064) to check the waveform.
>>> The version of UHD is 3.13.0.
>>>
>>> I tried to send a constant signal using the flowgraph (Screenshot from
>>> 2019-06-18 14-56-57) in attachment on GNU radio Companion 3.7.13.4, and on
>>> the oscilloscope I saw this "IMG_6586".
>>> Also, I tried to generate a constant signal in Simulink model (16-42-17
>>> & 16-14-04) on Matlab R2019a but, on the oscilloscope, I saw this
>>> "IMG_6584".
>>>
>>> I tried to send a sine signal with the Simulink model in attachment
>>> (16-46-10) and, on the oscilloscope, I saw this "IMG_6583".
>>> Also I tried to generate the sine signal with GNU radio (17-08-58) and I
>>> saw this "IMG_6588".
>>>
>>> It is possible to see how the amplitude and frequency change in every
>>> case, I need to obtain an accurate signal because I have to measure the
>>> amplitude and phase in a particular point in the circuit.
>>> And in the previous email, I added that the problem increases when I
>>> lower the carrier frequency. All these measures were taken with a carrier
>>> frequency at 3 GHz, but if I change the fc at 1 GHz the shape is worst,
>>> e.g. IMG_6589.
>>>
>>> Thank you in advance.
>>>
>>> Best Regards,
>>>
>>> Simona
>>>
>>>
>>> Il giorno mar 18 giu 2019 alle ore 15:34 Michael Dickens <
>>> michael.dickens@ettus.com> ha scritto:
>>>
>>>> Hi Simona - Can you please educate us as to a few items?
>>>>
>>>> * your setup: you have an N200 + some daughterboard (which one) + some
>>>> spectrum analyzer (which one), connected ?somehow? -> are you doing actual
>>>> wireless Tx -> Rx, or do you have a cable hooked up between the N200 &
>>>> spectrum analyzer?
>>>>
>>>> * what waveform you're trying to generate, and what is the actual
>>>> flowgraph you're using for GNU Radio? how are you generating the waveform
>>>> in MATLAB?
>>>>
>>>> * which version of GNU Radio and UHD are you trying to use?
>>>>
>>>> * which version of MATLAB and it's UHD are you trying to use?
>>>>
>>>> The above might help someone to diagnose your issue ... without it, we
>>>> can make some guesses but not much in the way of specifics.
>>>>
>>>> Please remember to "reply all", so that others can see your response
>>>> and be able to chime in to provide help. - MLD
>>>>
>>>> On Tue, Jun 18, 2019, at 8:42 AM, Simona Sibio via USRP-users wrote:
>>>>
>>>> Dear Sir/Madam,
>>>>
>>>> I am Simona Sibio, a student in Heriot Watt University.
>>>> I am working with USRPs both on Matlab and on Gnuradio, and with both
>>>> softwares I have the same problem: the shape (generated by
>>>> N200+daughterboard 10 MHz to 6 GHz) is not accurate, in attacched some
>>>> photos.
>>>> At 1 GHz, the shape is worst than when the carrier frequency is 3GHz.
>>>> It is not possible to measure the amplitude and frequency because, also
>>>> at 3 GHz, it is not stable.
>>>> Could you help me?
>>>>
>>>> Thank you in advance.
>>>>
>>>> Best Regards,
>>>>
>>>> Simona
>>>>
>>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000dbc0ba058b9c214a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Turn up the transmit gain on the USRP sink. Start wit=
h ~40dB and transmit amplitude 0.3.</div><div><br></div><div>Nick<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Jun 18, 2019 at 9:40 AM Simona Sibio &lt;<a href=3D"mailto:ssibio2@=
gmail.com">ssibio2@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you for the assista=
nce.</div><div>I tried to change the amplitude but the amplitude and freque=
ncy are not accurate in the oscilloscope yet.</div><div>If I lower the ampl=
itude, the S/N is lowered then it is worst.</div><div><br></div><div>Best R=
egards,</div><div><br></div><div>Simona</div><div><br></div></div><br><div =
class=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">Il giorno mar 1=
8 giu 2019 alle ore 18:33 Nick Foster &lt;<a href=3D"mailto:bistromath@gmai=
l.com" target=3D"_blank">bistromath@gmail.com</a>&gt; ha scritto:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding=
-left:1ex;border-left:1px solid rgb(204,204,204)"><div dir=3D"ltr">Waveform=
 source amplitude is too high. Turn it down to &lt;0.4.<br></div><br><div c=
lass=3D"gmail_quote"><div class=3D"gmail_attr" dir=3D"ltr">On Tue, Jun 18, =
2019 at 9:31 AM Simona Sibio via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;padding-left:1ex;border-left:1px solid rgb(204,204,204)"><div dir=3D"=
ltr"><div>Hi=C2=A0Michael,</div><div><br></div><div>thank you for your inte=
rest.</div><div><br></div><div>I have two N200 and each one have two daught=
erboard UBX-40; the transmitters are connected by coaxial cable to an oscil=
loscope (Rhode&amp;Schwarz RTO2064) to check the waveform.</div><div>The ve=
rsion of UHD is 3.13.0.<br></div><div><br></div><div>I tried to send a cons=
tant signal using the flowgraph (Screenshot from 2019-06-18 14-56-57) in at=
tachment on GNU radio Companion 3.7.13.4, and on the oscilloscope I saw thi=
s &quot;IMG_6586&quot;.</div><div>Also, I tried to generate a constant sign=
al in Simulink model (16-42-17 &amp; 16-14-04) on Matlab R2019a but, on the=
 oscilloscope, I saw this &quot;IMG_6584&quot;.</div><div><br></div><div>I =
tried to send a sine signal with the Simulink model in attachment (16-46-10=
) and, on the oscilloscope, I saw this &quot;IMG_6583&quot;.</div><div>Also=
 I tried to generate the sine signal with GNU radio (17-08-58) and I saw th=
is &quot;IMG_6588&quot;.<br></div><div><br></div><div>It is possible to see=
 how the amplitude and frequency change in every case, I need to=20
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
dding-left:1ex;border-left:1px solid rgb(204,204,204)"><u></u><div><div sty=
le=3D"font-family:Arial">Hi=C2=A0Simona - Can you please educate us as to a=
 few items?<br></div><div style=3D"font-family:Arial"><br></div><div style=
=3D"font-family:Arial">* your setup: you have an N200 + some daughterboard =
(which one) + some spectrum analyzer (which one), connected ?somehow? -&gt;=
 are you doing actual wireless Tx -&gt; Rx, or do you have a cable hooked u=
p between the N200 &amp; spectrum analyzer?<br></div><div style=3D"font-fam=
ily:Arial"><br></div><div style=3D"font-family:Arial">* what waveform you&#=
39;re trying to generate, and what is the actual flowgraph you&#39;re using=
 for GNU Radio? how are you generating the waveform in MATLAB?<br></div><di=
v style=3D"font-family:Arial"><br></div><div style=3D"font-family:Arial">* =
which version of GNU Radio and UHD are you trying to use?<br></div><div sty=
le=3D"font-family:Arial"><br></div><div style=3D"font-family:Arial">* which=
 version of MATLAB and it&#39;s UHD are you trying to use?<br></div><div st=
yle=3D"font-family:Arial"><br></div><div style=3D"font-family:Arial">The ab=
ove might help someone to diagnose your issue ... without it, we can make s=
ome guesses but not much in the way of specifics.<br></div><div style=3D"fo=
nt-family:Arial"><br></div><div style=3D"font-family:Arial">Please remember=
 to &quot;reply all&quot;, so that others can see your response and be able=
 to chime in to provide help. - MLD</div><div style=3D"font-family:Arial"><=
br></div><div>On Tue, Jun 18, 2019, at 8:42 AM, Simona Sibio via USRP-users=
 wrote:<br></div><blockquote id=3D"gmail-m_1109593595673867528gmail-m_87970=
02318478984421gmail-m_1447609992642899520gmail-m_5072467465448257050gmail-m=
_-4577347644377748938gmail-m_8370323799690171113gmail-m_3831871693442919435=
gmail-m_5647440429440147896gmail-m_9074622197958603082gmail-m_-969798721518=
0129qt" type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"text-=
align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text=
-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvet=
ica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spa=
cing:0px;white-space:normal;font-stretch:100%;background-color:transparent"=
>Dear Sir/Madam,<br></div><div style=3D"text-align:left;color:rgb(34,34,34)=
;text-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:nor=
mal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33=
px;font-style:normal;font-weight:400;word-spacing:0px;white-space:normal;fo=
nt-stretch:100%;background-color:transparent"><br></div><div style=3D"text-=
align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;text=
-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,Helvet=
ica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word-spa=
cing:0px;white-space:normal;font-stretch:100%;background-color:transparent"=
>I am Simona Sibio, a student in Heriot Watt University.=C2=A0<br></div><di=
v style=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line-hei=
ght:19.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-wei=
ght:400;word-spacing:0px;white-space:normal;font-stretch:100%;background-co=
lor:transparent">I am working with USRPs both on Matlab and on Gnuradio, an=
d with both softwares I have the same problem: the shape (generated by N200=
+daughterboard 10 MHz to 6 GHz) is not accurate, in attacched some photos.<=
br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transform:n=
one;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:visi=
ble;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:nor=
mal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100%;b=
ackground-color:transparent">At 1 GHz, the shape is worst than when the car=
rier frequency is 3GHz.<br></div><div style=3D"text-align:left;color:rgb(34=
,34,34);text-transform:none;line-height:19.99px;text-indent:0px;letter-spac=
ing:normal;overflow:visible;font-family:Arial,Helvetica,sans-serif;font-siz=
e:13.33px;font-style:normal;font-weight:400;word-spacing:0px;white-space:no=
rmal;font-stretch:100%;background-color:transparent">It is not possible to =
measure the amplitude and frequency because, also at 3 GHz, it is not stabl=
e.<br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-transfor=
m:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflow:v=
isible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-style:=
normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:100=
%;background-color:transparent">Could you help me?<br></div><div style=3D"t=
ext-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.99px;=
text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Arial,He=
lvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400;word=
-spacing:0px;white-space:normal;font-stretch:100%;background-color:transpar=
ent"><br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-trans=
form:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;overflo=
w:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;font-sty=
le:normal;font-weight:400;word-spacing:0px;white-space:normal;font-stretch:=
100%;background-color:transparent">Thank you in advance.<br></div><div styl=
e=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19=
.99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Ar=
ial,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:40=
0;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:tr=
ansparent"><br></div><div style=3D"text-align:left;color:rgb(34,34,34);text=
-transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;o=
verflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;fo=
nt-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-st=
retch:100%;background-color:transparent">Best Regards,<br></div><div style=
=3D"text-align:left;color:rgb(34,34,34);text-transform:none;line-height:19.=
99px;text-indent:0px;letter-spacing:normal;overflow:visible;font-family:Ari=
al,Helvetica,sans-serif;font-size:13.33px;font-style:normal;font-weight:400=
;word-spacing:0px;white-space:normal;font-stretch:100%;background-color:tra=
nsparent"><br></div><div style=3D"text-align:left;color:rgb(34,34,34);text-=
transform:none;line-height:19.99px;text-indent:0px;letter-spacing:normal;ov=
erflow:visible;font-family:Arial,Helvetica,sans-serif;font-size:13.33px;fon=
t-style:normal;font-weight:400;word-spacing:0px;white-space:normal;font-str=
etch:100%;background-color:transparent">Simona<br></div></div></div></block=
quote><div style=3D"font-family:Arial"><br></div></div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000dbc0ba058b9c214a--


--===============9023485113047577803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9023485113047577803==--

