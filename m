Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8170FFE0D7
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2019 16:06:21 +0100 (CET)
Received: from [::1] (port=39562 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iVdAs-0006RA-Cd; Fri, 15 Nov 2019 10:06:14 -0500
Received: from mail-qt1-f179.google.com ([209.85.160.179]:45686)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <vapham.inria@gmail.com>)
 id 1iVdAo-0006JM-8U
 for usrp-users@lists.ettus.com; Fri, 15 Nov 2019 10:06:10 -0500
Received: by mail-qt1-f179.google.com with SMTP id 30so11075282qtz.12
 for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2019 07:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=no2umSNytynjZC2JNHipfRbIRUR19tY+0UoQLGUh4Fw=;
 b=VCCC1+o84ZDoq7OOkRrFp6k8YotrPKHovqHDQHnXH9iRniz128xLWwOAw0/X07yfdk
 ovjZSZyoarXaGAiGERlAsIgMTZ5f4RkC0Df3PnF8W0sf+Q19RH8aG6TxLL21GHJ5Z6wZ
 OhLnfAJOUropPIvMCt/stfD55VXoY1MXPGlIbQ4XV7SSOOcQ6H0fL/dnL52TCzNmubw4
 zrF7ySQ8cd0GvqobSCdf1ebQw8jV9fIboj+KVF1QFvpLNCL/7nFfmgZiTtmN2eqk/OJ5
 MEE0cCRrCsp37nYU8OHfWihRzVTfJ7aG+QfIVSgdLrx4LiHtudK1SIDhtHeUeIvkmp6J
 OD7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=no2umSNytynjZC2JNHipfRbIRUR19tY+0UoQLGUh4Fw=;
 b=RfSsmamo1ExK85Ox8DSOBMOnm7BOHZqyFqQkjMkCeZeEhBncUYmgWoOcC6tSmi7WHd
 k+RiXLjNXdy/Mo9jHvlIrLt5eAVGJvuoTCfjS3x67mR+GCKo95e/BasRgyi69hujRcIh
 JV0pxlZKIpKe/HM6SOsnwB47WDBrZRup237iDeWtJxouluoB4Q0a0+DWR/JI98Lbg0LA
 Bi3T9OxHxMdISPQmiwGS/lDohpDi4zANP8Z0vYhlmzzeDZjDsyyF3OfLlnbWczOx9nrx
 ORbCqybJi5q0CKb7Okdsm2czEZphmfdREEtvv5AcExS0R/jSIPYSuHTtxeaL6a6WqPhA
 ThOg==
X-Gm-Message-State: APjAAAVEsAmfstLKBsU/70uaxBFjNvY3dT1D/DcYrLFHNIQ/VZTBpuGV
 BVmWhVmCx+yykWWnJqVF94YJo8YIPQG00VeChTc=
X-Google-Smtp-Source: APXvYqw0OPAyQQ4KhC2TWCVEdlW6QwQymJjxLVP11ocViJXsiA6ezndxlija8wVBXEChl2JBxP4Is85U8wOvPJ8JovU=
X-Received: by 2002:ac8:7216:: with SMTP id a22mr14088905qtp.187.1573830329362; 
 Fri, 15 Nov 2019 07:05:29 -0800 (PST)
MIME-Version: 1.0
References: <CAGLe3RnJAJQ=pf1F0SvDfG3AexdS52KRKrQ6CsouhXvAFxyfNg@mail.gmail.com>
 <88768f87-f59e-e5a3-3a17-d884721fc3fa@comcast.net>
 <CABcX43wPiE17s-149n4GKrhwLAArjybpe5dgHyBm9AEQncTDBQ@mail.gmail.com>
In-Reply-To: <CABcX43wPiE17s-149n4GKrhwLAArjybpe5dgHyBm9AEQncTDBQ@mail.gmail.com>
Date: Fri, 15 Nov 2019 16:05:17 +0100
Message-ID: <CAGLe3RntXa0ia0ziNak8SCZBk1+NwT65ywz_wuAWEV5qvNbhsg@mail.gmail.com>
To: Malik Saad <maliksaad84@gmail.com>
Subject: Re: [USRP-users] Creat a sinwave signal by usrp-b200
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
From: Van-Dung PHAM via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Van-Dung PHAM <vapham.inria@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8825994883528962817=="
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

--===============8825994883528962817==
Content-Type: multipart/related; boundary="000000000000b87b8f059763ed9e"

--000000000000b87b8f059763ed9e
Content-Type: multipart/alternative; boundary="000000000000b87b8d059763ed9d"

--000000000000b87b8d059763ed9d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear @Ron,

Thank you for your kindly reply

As you said, I change the frequency to 50MHz-6GHz, and I the Oscilloscope I
got the correct frequency as I want

However, the shape of the signal isn't really sinus. The maximum sampling
rate of my oscilloscope is 5 GSa/s

Do you think the sample rate could change the shape of the sine waveform?
(I set the samp_rate=3D50MHz)

Best,

Van-Dung


V=C3=A0o Th 6, 15 thg 11, 2019 va=CC=80o lu=CC=81c 13:30 Malik Saad via USR=
P-users <
usrp-users@lists.ettus.com> =C4=91=C3=A3 vi=E1=BA=BFt:

> Dear,
>
> You can change the signal waveform (fro signal source) from sine to cosin=
e.
>
> On Fri, Nov 15, 2019 at 9:25 PM Ron Economos via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> You can't have a center frequency of 1 kHz in your UHD Sink block. The
>> frequency range of the B200 is 50 MHz to 6 GHz.
>>
>> If you change the center frequency to 50 MHz, you should see a 50.001 MH=
z
>> signal.
>>
>> Be sure to terminate the output of the B200 with 50 ohms. With Gain Type
>> =3D Normalized, Gain Value =3D 1 and Amplitude =3D 1 in the Signal Sourc=
e, you'll
>> be transmitting at maximum power.
>>
>> Ron
>> On 11/15/19 00:44, Van-Dung PHAM via USRP-users wrote:
>>
>> Dear all,
>>
>> I am a newbie in this domain. I want to generate a cosine waveform in th=
e
>> output of usrp-B200 (TX/RX). So I make it as the following picture
>> [image: image.png]
>> But what I got in the oscilloscope is not a cosine/sine waveform. I don'=
t
>> know where I have a mistake.
>>
>> Thank you very much for your answers
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b87b8d059763ed9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear @Ron,=C2=A0<div><br></div><div>Thank you for your kin=
dly reply</div><div><br></div><div>As you said, I change the frequency to 5=
0MHz-6GHz, and I the Oscilloscope I got the correct frequency as I want</di=
v><div><br></div><div>However, the shape of the signal isn&#39;t really sin=
us. The maximum sampling rate of my oscilloscope is 5 GSa/s</div><div><br><=
/div><div>Do you think the sample rate could change the shape of the sine w=
aveform? (I set the samp_rate=3D50MHz)</div><div><br></div><div>Best,</div>=
<div><br></div><div>Van-Dung</div><div>=C2=A0</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">V=C3=A0o Th 6, 15 thg 11, 2019=
 va=CC=80o lu=CC=81c 13:30 Malik Saad via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; =C4=91=C3=A3 vi=E1=BA=BFt:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Dear,<div><br></div><div>You can change t=
he signal waveform (fro signal source) from sine to cosine.</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, No=
v 15, 2019 at 9:25 PM Ron Economos via USRP-users &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>You can&#39;t have a center frequency of 1 kHz in your UHD Sink
      block. The frequency range of the B200 is 50 MHz to 6 GHz.</p>
    <p>If you change the center frequency to 50 MHz, you should see a
      50.001 MHz signal.</p>
    <p>Be sure to terminate the output of the B200 with 50 ohms. With
      Gain Type =3D Normalized, Gain Value =3D 1 and Amplitude =3D 1 in the
      Signal Source, you&#39;ll be transmitting at maximum power.<br>
    </p>
    <p>Ron<br>
    </p>
    <div>On 11/15/19 00:44, Van-Dung PHAM via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Dear all,
        <div><br>
        </div>
        <div>I am a newbie in this domain. I want to generate a cosine
          waveform in the output=C2=A0of usrp-B200 (TX/RX). So I make it as
          the following picture</div>
        <div>
          <div><img src=3D"cid:16e6f0a0f54cb971f161" alt=3D"image.png" styl=
e=3D"margin-right:0px" width=3D"542" height=3D"355"><br>
          </div>
        </div>
        <div>But what I got in the oscilloscope=C2=A0is not a cosine/sine
          waveform. I don&#39;t know where I have a mistake.</div>
        <div><br>
        </div>
        <div>Thank you very much for your answers=C2=A0</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_li=
sts.ettus.com</a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b87b8d059763ed9d--
--000000000000b87b8f059763ed9e
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <16e6f0a0f54cb971f161>
X-Attachment-Id: 16e6f0a0f54cb971f161

iVBORw0KGgoAAAANSUhEUgAAAkUAAAF9CAIAAACF3YvLAAAgAElEQVR4AeydCVxM3RvHn1nay1CT
Eu0blfYUEkm0oCjLSyqyr6Es2ddosWdPErKlhMgWWROFFqIoe9pUtMz6/9yZmmaaKaX4V8583s87
5957lud877hPZ7m/B8dkMgF9EAFEABFABBCBdk4A387tR+YjAogAIoAIIAIYAeTP0O8AEUAEEAFE
oCMQQP6sI9xF1AdEABFABBAB5M/QbwARQAQQAUSgIxBA/qwj3EXUB0QAEUAEEAGiQAS2trYCz6OT
/yyB69ev/7N9Rx1HBBCBdkFAsD8DgKhT6PnVLu7g3zDSZTz6++ZvcEZtIAKIQEsIoPnGltBDZREB
RAARQATaCgHkz9rKnUB2IAKIACKACLSEAPJnLaGHyiICiAAigAi0FQLIn7WVO4HsQAQQAUQAEWgJ
AeTPWkIPlUUEEAFEABFoKwSQP2srdwLZgQggAogAItASAh3NnzErX0evH9mvlwiJjCN169r3vyXn
3vxsLIIANe/SrhVrAkIzKjCM9I/7BpBxJEPfF9UtoYrKIgKIACKACPxtAg2+f/a3DWmV9qi5x9yN
5yf8BCWHqd4GuMwzh68Fet1NKb9/ZbKykOAWqO8v7958sqSfntcUXXEcXsrIbd6CD52tZQmCs6Oz
iAAigAggAm2TQIcan1U+D9iU8BNEhh2Kiw1euTno+P2jwySg6uamnck/2AMvLYfF0wx6kHEkDbNF
MXmUqifLzK1OlgDAg6naeBLZ+tKX1OO7d+4OSyigA0B13qUlLuadsaGeXNf+U/zvFmJna8ZwWo5L
Zpook3EkVePFcZ9pAIziO1vHa2GVk3HSqsoO/k8r2+Y9R1YhAogAItARCXQkf0YvfPEoHwB6uVp2
ZQ2v8F37j9IHgIKUpyz/BFB897Wm3+E9C/TKn4TOdIv8pjRhw8o+wgCgOnlr+IFDqwxF625y5Ys1
zp6BNz5oem3Yu2qkVHqs36jJoR9otRmKbzyWnr7Fb1in8tTDK3ZkVtO/xi3ZfOON3PRj505H71vh
YSLdsca+tf1G34gAIoAItE0CHcmfNYGwzFi/uePsxq9e1p8AtIfn04X0hw7VkACAbv2dJ40fNVih
zgdV516Negsg57Zn06xZPgFB1kJAfRiR9L12MU56wuaVM/6bOteUCJD/8hsFL9FdnQSQHbkx8NCp
h/nyg+w0uZxjE2xDWRABRAARQARaQKAj+TMCWd9CDgBenr33DZsYBMa3+9EvAEDW2KRmPYxaRWUA
MGnVFAYHGo6TalZCnCxJAMARiBhCBhNwpEGh96JDV08apMjMOLN9zuhhCx+jCcdmIUWZEQFEABFo
AYG68UgLKmkrRcUMfFcMCp9/+9o0++EPnA3wL88eufETRG38FpiJwXPMyrJTPkt6uSs+DXnEBGLf
0fpSQJCQFgcoyTp/9AhTz9SmF6cvIir2rmoBW94en7NcyaPb8+0JVBDqO8m8Mw6+cvLwJH4+CdyZ
2MXMbGRvo25fH6TfK/v0nQogxpMHHSACiAAigAj8IQIdyp+BkKp7RIpUgG9Q5NWw3VeBSO5l67N4
3VpXZSHGRxZA8sghjKitwc/KSCZTgiL+60EE0Jk0b2TMqtg4/6lxPXzunFfjgBbrvTYmjOa9/kDY
2vmAl9EdsWlLoJciEVhDP06uugQOV5l1YXfE9sJqAGG5Pm7LA6061V1FKUQAEUAEEIE/SgDHZNYu
CHG1Y2tr28HixdA/7htkOPtFD5+7SYH6IlxdRckmEHAZb4vinzWBE8qCCCAC/08CHWn97P/JEbWN
CCACiAAi8P8l0LHmGxtmSegx627hrIavoyuIACKACCAC7ZsAGp+17/uHrEcEEAFEABFgE0D+DP0S
EAFEABFABDoCAeTPOsJdRH1ABBABRAARQP4M/QYQAUQAEUAEOgKBZvizGh1ei02vKbWavCztXZJS
9/4Tl0Y1HJaFWZZ8LOwmW7LjN5jR8nbaDFr7klJXlP7lsJ1lU0O68BevqwilEAFEABFABDoKgWb4
MwFdFreYMHXGaH1cenzAFJvRx95TBeQBYJQ9iQi7VaMILDAHOokIIAKIACKACLSMQMv8mcLwhev3
h13MiJuqCBXXNu1JqaxMWqyDI+nMecKRLmQUxPsHP8nc72ln6rgsoYxR+mSPk5muQk8dFbtVF7/Q
gJa309poyBR3Rxdn074uq+4V1ykrcrrGrHi+19PExFBOZ+RKngx8tQHz58sIj4GGinoman0m7H7D
NaqrfHNwUn/rgOTvAhrgtIQSiAAigAggAu2TQMv8GbvPOJLxWCd5gPzklCJ+MSi87LDli011Zh69
+uTyFmvhjE0zw+S3JH58+SRmyIPZS24WMQEo377qLo+Kirl/dGD84u0pHFfIQVr1IVVy3s3klNeh
hucXcGWo4qut6mXAlG10n6vv0p/m3A2ZgAlaYR/Gz8zdnh5Rpntjfc06t0afOaahBCKACCACiECb
INBKz3a2aBYOB2LmgWnUorTdpoJ1eOkFyYn0wZP7yeBx4npjxytk3MquAhBRsbdVE8W+bYYSHj/8
xokxVotIRGX0OKPOeDzJaOxIoccPC2oy8Nf2+mNSfOXgOUPkiQA4kS4yYqz+0T5FeHlE9z90fr6B
1G+q6ddagr4RAUQAEUAE2iaB1vBnzNKnZy98BZA3M5IhMBl0Go3OECAKKRAADvMvTBqFxirAZFDo
vyrZmENi1cbfDoGk16fb+8SHeVX819AZRAARQAQQgQ5BoGX+7FNs0IrpHsN1HA9/BPGhfnOMxSof
LzUUkzNc8JRr0hAnLClUVfQTm4okyJoNJNwKe1DEYFaknTn1WddaQxSgOi868kkJg/H9yelYqnnf
rnwiXNW50adTvjMYpalnYil9+srWZOCvTauHhZ34rZAbX6kAzKqigkrWWhlO0sQ7Iqz3GafpJ3Oq
O8RtQ51ABBABRAARqEegZf6s8vHpsEMxL5h6dkvDbkW7KwnVq519iO9i5dY7YZKFWv9516p1/fZ7
flnST07DyOl635AAG2kcgKiSaXWItVFv9anPXXYtNOafqhRVNPq529pIX31K6uidXBlE+WoT7el7
eCE+wFapl6HqgPmnP9VOXeJJA1ZG7ul2cPj8mA+Cd2EKNB2dRAQQAUQAEWgnBP7/8WJoeTuHeZTs
uba2l3A7YfbvmYnixfx79xz1GBFofwRaNj5rf/1FFiMCiAAigAh0TAJ8S1V/vZtE5QU3b9e1Ss+P
WuDln8ZZfhMzWBx6cKQcoS4HSiECiAAigAggAnwE/v/+rJ5JBDmXPZdc6p1Eh4gAIoAIIAKIQOME
0Hxj43zQVUQAEUAEEIH2QQD5s/Zxn5CViAAigAggAo0TaIY/m9gDR2IL6nP+b7XjddpKAzKux7SE
n9WvTgQs23T0cSnrla/qzNrzjbfPe5VedGfHNJNeWmRNPUU9S1ufU68462i8GVt69LuS/xVJC1UH
7M3GdvzTPx0bSlCYcq0cs6Xi8WI1y91vqMAsjhshT1bfkFENtHcHh/bwvPm91lbq270mOrNulpec
s++KIyt36q7SqbtKF7MlDypqc/zeNwog8HvcUClEABHoYASa4c+c5/vMm73AVQd7yUzWds682YsX
ufeRlrWaMmfhHAcloeqskwFbA44ml/223C8lc+e4MRfVAhLSC9+k5z2OmKeQl1P+27VxbhSTzq85
8ruS/2KaNtrfEp6XMwEq0u+U63R7dzu3GoD6+VEKmFh0F2IW3j2WqmhCjT33soqoaD9BKen4g+9s
xRPqu9gzhYMmmUsB4Ls4RKaXfcot+5RbkhzQT5xjKkogAogAIoAI/C6BZvizMUsCN673n9NfFgC0
JmzYuD5ozdR+UsWJR0K2h1yM97VwvgcA6XP15HGaPo/qlKWY5WlHPQb2JJLIOHnjoWuvf8ZeceaX
4QeoTN1+qHTy9kU28tiLaHhx1ZGLljp2xQMwK7KOT7Y2VdEzUDJ3D04tZ2KS/CaO86aPdB5uYDJy
5YNSRgN57GdNth/u7HEm+9EGFwNTM9Veer0m7Ev9SeeV/Oerv2GYuE56w+Ryrr6ugqrchFztue6k
pJRCOrPs2a1v2kM0xBiFN8Nfm6/eOFPkSsSraqLC0CnKTw49ZDk0Su65M6VDJxlKNlx55VO/XkMO
vWO9Al6dvkFvwM4samUyj+VMweEImFUvj84yN9KV1nJcgdEQVGqw+ZhF7qYGvWT03UOSbqwcbams
qtnb++pXfgXphi1EVxABRAARaLsEmuHPGusEvseEzYs1AKCb+9b9p3Z7aHGUQn4k+bj4HMsfEHz8
5FFPyZvb3d1Ofxb4CKUXZz2rVLdSEanfTnXWtjmntHYlvkt/lnlA98TC0CwKALXwW6+l52Iu3dup
dnZz/LdKQXko+Z+1l8dcunD8P/XeM48kP0l+l/kwVOP04qh8aW7JfxFBZesbUXtMlO/XB5/86HNl
UUqS6MBBA4wrbr/8UZl9NUd+WG8p5rfbh98YTbUyGDNW4tLJjEqCnMMk1eRjj4qZQHkXG/nDZooh
ayzGKIlzM5RW1pBW1ugxKiKvVsNETGesXdm5ix9pANWZZ6+KuY5QExLR4bH8C4aOPxxB9Yfn4jOv
PU3L2tb1xKb4bwxBpao/ZsgsTHj24vHsL0vcwtS33cpNixiYGHA8D8ml1N5c9I0IIALtmkAr7dfH
SekNHiAPwdkyfRydxykSoTqTjYXyLu5KPgBEe7tFs88kx7+pmDgQk+HfCnii4PfKyu/ON59249sP
cddziSGKSRfSXpXPHhGFDdWqSyjmmLy+iPLQgYrCAARlfXJpbsHXSkF5VOxslFnukVb4aMfc4Jvv
6UK4kpxiuy+UiXKcu0YvFFB/zwa1SkS1BmsW7H/xsdfdCuN5ShpKynmJmTldnhDNpsvhvp4//tbM
ux9JWHyEK2l05LNKY3ObSdobj90pHqx9PrrSbpchW8oL38Xh+JPLtlIcG2oSYr0mDf0xO+7j7Cll
J66K/xepKAS0z/Usn0DmhCMALBzBoocFk0FEbZSLPgmPp+n3VyjNLaLRqgWUUnNy0pXCCRGM9Lpp
mNsrCeNwmpYKP24X0kCN89dHfYvQMSKACCAC7YZAK/mzX/SX2Nc/IahfJ5Y0Pl5KWQKAJcMPRAIB
X6uXT5DWNhDbnZhb7agvIjVgV2bmt3B722s0JjAZePKwg/EhVpx1JlpeCuCF2ENLPB7HZDAZgvLg
iGJEVu2ldxb6vRgZe2OaqlD+6ZGWD3jV//nrb7Q3Ur2HdH8bd+lqnrK9qpgE2Vps+7WbuALteVrC
+efCH7974aWqjAeglX8XO/JsXV/zQdN6bjh8I8komjLyoC6/MiVvUyI6Y21/LLjy0vRznOSYS0pC
UHpdgOX84QhwBBEC1lMcgYgHBvO7oP5ieVit4QkEgggGBocnYux4TUBHiAAigAi0UwKtNN/IWvDq
IgaQdyEiMvJWbkXtU1JY1cFeDmgPQ48+yMlJv3/C39svqQJAkAy/mJG3l1TYwm03vrCCSlPLiiqw
zSAEWQuHTre2nH2HLcnRSjJT8jiVc5jjuzaWh0kpL8XLa8gKA+3z1VPpP7EHP7fkP39Z2rfkazff
VjCBPwFEWVNLYsL2S8TBOhJAIJuZlOzbk9nDtpf4l2tHPo249uZtcV52cV521tYeNyKe/cCTbTx1
nq5ddpjuOKkn31QqpwO1CVEt1xFVJzYEXOk8zk6JCAIsB75wBLL1x7hMKl9/a+tH34gAIoAIdFgC
rTc+kzCdOcX0dsj1rQuvGwS9v9qnBpmkeeC5IMqCgHDfKaEg3t3AZq66eO2QrB5VYT3vM6fwSxcP
6vmuWkhUTEbPYUmAvhiI9FpybM38mc4q/kwCCGmM2RnTW7FeSRBuLA9OxnrVqKNzho9WlpHoJqeA
DZJYkv8bJ1moka32x+2uX7+RTNoeb1+LK49n8SeUiaKqtrrV21PNzMgEAIL6ALXynT8GmEp/ijuZ
Z7LUrGYSkag0zEVmV0RSeb/BAyaZlXi8/O+Qjmit1YySuP/0OomwMHQafCbpiF2n2kuiWv/ZVxoE
S+/broDdGn7LgROOYMaHarWZh8ONxcrv15Zmf+Ok+frLmwEdIQIdioCtrW2H6s8/3Jnr16+3pPf/
f339llj/D5b9v4QjQPr6/+AvrR112dbWNupUi56D7aizHdjUlj9nWm++sQNjRl1DBBABRAARaPME
Wm++sc13tWMYWC8cQcfoFOoFIoAIIAItJ4DGZy1niGpABBABRAAR+P8TQP7s/38PkAWIACKACCAC
LSeA/FnLGaIaEAFEABFABP7/BJrrz2h5h4xZKvsamzKrGzO/NeT2G6u/+deQDn3zmaESiAAigAi0
GwLN9Ge093EnUlmdyzkTk9WYQ2u53D4AMOgtl9dvN7cCGYoIIAKIACLQAgLN82e0j7HH00G0r7eD
NORGnc5mCXlUJs/QIGOa+pVAyQrSJpEl3OITFguS26d9vbBsmAyJLKTvFfqWAsAse37E3UqbQCLj
5AwHLbvwrhpT4sUCp8kN83IfIEXSnfm4OGmxDo6kM+dJXSQ0pEPfghuOiiICiAAi0EEJNMufUT9c
CUsH0QHT588eJgN5J8++qRuh4VkCgjWUhNQ9BMntVz48/cVs2mhlWt6FZdtTK3488nFdEvGiy6R1
W1ZZVd7Z5zVqH9tDAlQ9vVBqvXbrkhHd64s5AQDSoe+gP0bULUTg/0SAWfk6ev3Ifr1EsMWUbrIW
4xedfvWD+eOagCDGZFzffTn1g1JQvyTu9XLsIy3NinXc3bCP27pzH6gAZZec5XAksnHoR1ZkjKz1
xmQcSW3ivZ/1L9X0u+EWqz7uG0DGkQx9X9Q9dFsCi/Lxsq+zaSfW4pGwoqGJ+wFsAYnehFaakqcl
lrWkbHPeP6PmXYp8ATjzwd3p0pbm4pFxUVEvl+kaspvHcYSFWXJS+oLk9vF9t+/b4FLW7dL5NRlv
C8tykq5+A+Eha7d720mOrD5/bc3zC48KZhhj9eH77jq0dgIW/AyAX4kf6dC35JajsogAIsBDgJp7
zN14fsJPUHKY6m2Ayzxz+Nr26YkppQn7nef7qP5gUt6fO3ApDyT6ubn37YITVjTuwvNnNv1zzGxD
j+gCENV19JyuI1We++LmlciYPB9XPmE+nmYFHAirNdSikJSR27wFHzpb8+m1Cqjml6foX0/N8Aq6
R9ccPmOBjsj3D5n3M7IKaQDCrdrKL81o9QzN8GfUDzEnsSgwScuHarLteB998vVSQ02WK6NTGQD0
H4XljZgoIS8njsNVCmONMhtdGZOQ7yZRM3TkV+IHQDr0jVBGlxABRKA5BCqfB2xK+Akiww7FxY6V
JwBjgeUkdY/4O1v3F6VtDxwD8OP222OX8ip7OC1avUSdL7hSZVrg8ugCwPfxv504W4MtOs6sLPxC
FwP40Rw7AEBYY8wSwS3SP6Ye373zRQ+hsTMdZD/ttDLxziA7zbTMPhaTwdSetDXQIWPd3ANPi6TN
fEKPbxksQ3t/ec2ijQeuv/kORDnDUX7btsw1IdXNxlG/peXSANTHefuuNetc553p5XWtdP26b5Dh
7BfSDjMGfz19LuW7lNHUkEtbHRTq5HcZZSk7HO033sP38798YomxVF39zex2q2VvhgV5l49mAujO
DQsPPRMeGuHXVww+nD6bVUWU0ZQF+Hbz8ImT/msjv9SYhhcXJLfPbbeIur1dV6DcWOsdfGDtkl0Z
AAZOFrL1DRKkxA+AdOi5SaI0IoAI/DYBeuGLR1iMxl6ull1ZT3Z81/6j9AGgMDUFi7X4iw+9KDXx
MwD0nuKkKgJMSllRQWFR4U+cKL7RP9l/UWtTLhdeuI4b7jVEpjIrYv7Iaal6MzwNRYqTg5aEvy5P
W+fssfUGftyO43Fhi3TfnF3g5H2xiMseEbWR9j0AcjYO0SD2MO4zznd7wqcG5jGLbzyWnr7Fb1in
8tTDK3bU7WpnlD3Z4WC/8Z74sL0Jp5e2BWeGTew1hRs7z6VTGQDGU7zcnJ3GODtN9JraXwjeR53L
oCu5rZtuJPEhdGlgsnL/2kCZLLl9qfLrWxdOWHubm2Rdg5IWQee2uukXR6xfsfmOiNXMw9GzNBqM
o1lXjJVi6dCfvd7F3R7ToWcp6H+YO3y0w7hliWwF/Tod+t7qU5+77FpozBd8jKVDz1eqXkPoEBFA
BP4JAjxLJqweM2vDXjWp/6xxS/mV/7S7qmP/9VqeWoGFpsJO14YZZH+zTjWpysYzdRq/ffsWvwWO
nQFAdfEu/01r52NhTfKzPr25cjYHgJl1wNvNYXLArZ8A5Q9iX2MRt2o+OMkBWxOeHlk5e2RfHeEP
yVfDFjnb+TzG7OX7SE/YvHLGf1PnmhIB8l9+Y+0BxDJ9Prgw+D5xyOFbYbN6itWN2fjK/9UTzZhv
9L7P9K6zDUd2ul7oVHNsuznl8+aa9J7aPJbrkj+uqz2Ajc8LN7IPJKY9K51Wc97AK+KuVwQnE5bQ
qcuJHYqZB2cyg3lysA6E9Vc/Za6uPY/vMmhtbEbtEfZNywOcuP6s8PO7OC5SesHN2+wshO6e9+6x
kvVKAXDyiJsFZV1iZ+/iejHZlZ1E/0cEEIGORYBA1jfvCqnfsmIeF3s6kfHAKHgYkwYAXc3Muv76
AUmQMbJSgJTPaUdicz1nKffbdPZo+CLPIx9YkIid5KQASgrfFlFAUYxSmFMMAFLdpIgA2AaRln06
9egiBDiiKDYD2kW5CxFwPM4TyK4nz8zTZYWpYjIJ0mqcgFUATErxd1FDF+8QF29gFEb9Z+R69cvd
1EKaCf8AR5wsSQCgY6GCAbjD/3aWgu/l9yJis8bN7y3ZRhzar29Xy5Cj0ogAIoAItGkCYga+flbh
3okXJzuOnuqkB5lnDl39ARL2qxeY8U3qCOiIWG/fzaOOe0YnLRtkem+8Q69ORS9LarOJ9R5jIx15
7uOBmRNpw+TeXTj+HUDB3kVTBKCB6b3aki35JqrYj1EP8M+5uPOMha8VqTjrwenz332uHKrbnkJ9
t8feZp/koGEmGt0IH6/crgToYqArTYTvTW63x+TwzRQf95DVw0cJX4mZqSPRFlxah/VnSIe+yT9M
lBER+LcJCKl5Hn8qFbBk26m4A9suYCzkJuyLOfSfYtMejwSFUSHPSL2XbTl64VLY1kt4CVmVfqMm
T3ZTFwGcuHXAtW0i84PPRx8MAZBQs/Ras22Vufgf5i3Se01MOHPxpgMHfFz3g4i0Wh/7WSqciSoA
IJCtxo9IOHX73OGrPxlAJOu5Ltsc3FcSmuHPgCBrs+NyaNlgr4hlw8cIXY2aqtUU7/9ne47ief5Z
vh2j9pbH2esYHFAv2iaB1oznSXl3fIrxnKsiY0Kf7nfq3jSH1japtD+rWv6c4Z8ubX8UkMWIACKA
CLQOAWHViQfu7F82RTH3QR7XBorWqRzV8ocJoL8//jBgVD0igAi0KwI4Cf3/fLD9+ujT7gg0Y3xW
I3PCEnQhKXXvP3Fp1JufzdrQ2jgdtnJjj2kJPwXma3uC/QLNbPWT/GEBqB8iFw5XVVaRUlDXGBOU
WIy9VkIvuLXUwUihp57KsNVx+djWKf4zrW4aqhARQAQQgTZEoBn+rMZqcYsJU2eM1selxwdMsRl9
7H19JbPf7ByDjidbTZmzcI6DEt8L+KwqeQX7iY1n/k0jWqMYk05vrpNvbhGi/JBVd169Lc+76y91
1DPwRSWUJ65ZfHXAseyXTy/bP5y94s53Jv+Z1ugcqgMRQAQQgTZLoPn+TGH4wvX7wy5mxE1VhIpr
m/akVDLL0456DOxJJJFx8sZD117/TAOgfb2w1F5eBhvMiaj2d4/5Sgfmj8zj0217Y4qfXbT6+6dV
1pPSf/Qp8UjI9pC49z9ZEvtdh06dPFCKRBY1mnYwqySpnmD/j8KazNSGRfq7DpsxbTCpTs6/kl+q
H4BRfG+LtW4vZdPBw+d79bTel0NlVmQdn2xtqqJnoGTuHpxazqTl7bQ2cZw3faTzcAOTkSsflDJA
cB77WZPthzt7nPkoWFSAXhDn56iqY6JlZNJ76sWvFKzamiKnkrZbGw2Z4u7o4mza12XVPdaYi/Oj
YVY83+tpYmIopzNy5b1ihlA3a0dzJTE8CMlbDlH8mVtMq8w6e580cUxPcZxIT9cJckkx6cV8Z+ri
E3DqRQlEABFABDoQgeb7M3bncSTjsU7yAPnJKe8f+Lj4HMsfEHz85FFPyZvb3d1Of67Ki1qxP5kx
Ymts1LFDixy0JPDwM8l3tPehxzQbb/+DW6b261zbMkdKX6H2DLuF6vQMlfkRQS4yb6NnzDorPFGQ
YD8ANCLSX51yT2JisLcRji3nL/CuVaVt9o41CU3KTY5dJZOGBayhZG2bc0prV+K79GeZB3RPLAzN
ogBQC7/1Wnou5tK9nWpnN8d/qxSUh5L/WXt5zKULxxvY5sv4ds3/Wu+TT56+Tk1O3jaYjAfgFBnX
DU/59lV3eVRUzP2jA+MXb0/hdj9VH1Il591MTnkdanh+AdelqqyjBz8PmKAvQS3KLiNpkLGBLYGk
KFuZ+/Un35k/+LqLQLLoJCKACCACf5cArw9pVttsMRgcLe/qlXyAL9HebhM892UygJoc/6a6Uw9l
MSiIC9m4N/rhT/UhRtLU7Li4LyBsExSxdtq0GUsCZ+nWvKzAktJfPHPyyB6884zCViu8XZw9Fk5X
B3gW/14dE+wHkOnj6DzOrrd0rYIm5d0VTKTfZu1276mrts7XBcBE+tlCZcSBG9d4eXqO1gYofFtY
DWLmgWnUorTdpnWvSdALnt7DWY836ITDSRq6OmkJA70g6ULaq/DZI8wGDhk0/2JJ1QdMwk1EeehA
RWEAcWV9cmluwVeBeVTsbJTZaqQCOeI76w0QuTBrxsqA0w8/E8WxnTgiXEVEVOxtsTf4RVRshhIe
P/zGNcYTURk9zqgzHk8yGjtSqPYSvSh+xbU3gRwAACAASURBVNSwXpt3O2CeEX0QAUSAh0Dtej95
5p3vTICyqzadybg+u17/xgLJL5b2eZptzgGzLDlwsFZXHIkrBk2t2dhJEllcz3nRxY8cjSmeyn9h
Fe+GA56SjRxQXh2aatxTAUcyWZFRv9n6S/KCFvJZVVenB1rhSFY7cmnAv/zfSOMtv/S7+xuZpU/P
XvgKIG9m2Bl7L5zY1z8hqF8n1ivieCllKVnxU3dOhJ+5+ejZg2P+0aH3iK83YMYy+RXRuKT0ebpD
p1TTmcCgVf7G749dkViXzsIABCLm+1hy/oKk+nnaZJnIwJOHHYwPseK880jLSwG8ENtp4PE4JoPJ
EJQHRxQjNvqKvJjBplt3xty+HndpQ/+dlnHxk4C7CJNGobEW3pgMSiMrcOwWmD+SgyfNzJ1y5YRj
NwKAkIxGp9I3hVToLEQv/VAgqiIvwXemEU/LxwCdQAQ6DIGiU5uOL+s/V/rvd4hBZ+AJjf2xWZl6
aH9CfienwP2LLfR433WTsp45y5KWdODwne2T5xqmRblj/855P6w9BBUVho1tOLinp+ju1odLWJ+3
Cv4jPNl8yr7zXrFePnzXapfkL2u92zncccWdZ3t7YQv5m82UiF/PzhjqGTgkw99QDID69pjvdTUr
BbbiF181f/REY7QFN/wpNmjFdI/hOo6HP4L4UL85FjoO9nJAexh69EFOTvr9E/7efkkVjMI7wccy
RfRs/htvpysE1OJChpqDYzeg3lo8YfX+fXu3LNqTzj2jJqApeuIS38CA9ctD3gPO0EFfQrBgv7Bq
U0T62dULkOonkE36MW6delbGYP54di72DQUIXS0cOt3acvYd9u4JrSQzJa+Cb3sHvrE8tG/J126+
rWBC/QSj8nN2Cclw2ES/DYv7l6bm1Hu5pTovOvJJCYPx/cnpWKp5X27huOrc6NMp3xmM0tQzsZQ+
fbvSs45MHRM/6NTRKT3Zkmxi2q59v588++ons+rluRNf+zjpSfOdqRuUCoCNTiECbZqAbaOfRk0n
MFM27XhSzvlXXJk8Q4OM0/R5VAmUrCBtElnC7XZ5VfpSPTJO3mGGp6UESbab8/a46FUWymRcVwvP
qE81UyW0L+cX23SuWdGvAhC0b6DenoDHnIcc/zI/JcN/4KDTpQDfL/iOt92UQeH5Y1jOxst7feCe
zcYA1MzbuVVlz4+4W2kTSGScnOGgZRewlRFa7R6Cmg0H3NsFSutvOCjn39AgcD8Bkazfz1xDWoTH
GBZf/kV6Gt9CPvbM/HRi1QXjNZN78k63QeWbg5P6WwckN11Qq9G72sDF5vuzysenww7FvGDq2S0N
uxXtriQkaR54LsjTuCzcd8ro6RtPvO/RT10ch2cWJR1dPHni8Kk70rsNWuk/RplkHhC13ctMKGHX
ytl+Rx6VcX5fDVgmZmGHj9sY8pCi6rxv30RVYgOC/S0R6cfkjnuv2DE8eYqpotHwdQU9lSXFhER7
LTm2pvsxZ5We+t31hsyK/iBg4Um4kTxVaXu8feML6FA/Qf3+1H9sXxU9Y5V+q6u8lttiqthcH1El
0+oQayNB0QBEFY1+7rY20lefkjp650JjRvK6tTfynofY9lTt1F2l+8SrxUypgeuDbG9PVNU0tL9s
vmfzwM44/jNcbaEkItDuCOSMjm7ov8b60nuhh/LX45vqb9LCE/if2FD5OJ4+2MNc9GvCJsfZjw08
RqtXZ4evPpTGfgRUPrpKtVsxt78wtqJ//N33JP59AzUaw5w9Ad1rB1UClvlz5UatW2lEAJB2Xrc3
cpE+Zz6I1RtK8ae8V48uRb0BAGk10ac+rksiXnSZtG7LKqvKO/u8Ru3Lrj8byLNdILOHB8+GA9Uv
fBsaGoMm6Br/Ij3nychZyAd6fty6/fJLfQ15esP4mbnb0yPKdG+sr1m9x56gllpwrhnzjYQes+4W
zhLQFq6TvmdYgmcYz6XBu288381zBiR1Jx2+Mekw10keKX2RWmX96syb2AxmN9cdh0IO1eXu0pBg
f+Mi/Vxy/oKk+vEk00U3MlcI4aoyd492EdEjE0BMc/yhm+PrGuYS3a8T5m8wj7BNeGYKqzBfQvlI
4giB1WIn60cDqM1IVF5w6/GC2iPWt+XJD4Unec4AdB0SFP8iiOskge8M10WURAT+EQKivafPtTsz
Y12IhQJ3j/mDw2CbqQYE7Vw3+G7qvqSH3T227FgpHnj5/JpPb2uCoBEHBQT5jhJ3+H5p4OZnV55k
vMf2DUC0t1s0u+Lk+DcVrrJYmrUnYELXusFCVQ5rmX/I2u3edpIjq89fW/P8wuPq+c6DlEU3ppIM
hjmP6sWtrggA77c5993GqlfdY50784blNxDmKf6oYIYxd4eAtV1gxHfKzh2p6W+LxfWxDQfB2awN
B4pERsFbZTHIiAvZWGZi3MfGw0iaAERsP8FWwLMWZHiqatZB7UL+HQcyriRh1Tbc0rP9O+Of1tVB
+xTh5aHqdfLiPN0/rlncDH9WZ2BHStHzLy9w9H9RSf1JVRy9J8yI5++KjtRR1BdEoC0QYMc0EbyW
/kfsI3S1W+/Vo8+eXbXrOSxXRqcyAOg/Csu52xQny4jgCMLYWnlnhc5EoGMpJqP+oj/X1FK9fQMS
8B6rr6E9Adxt/SJNHuu/eaxSJzktE3OtLvTn93+RHZtqqr9dgLsIXnZEvQ0NebGu8gw6jQZEAgEv
YKzKXZqV5l+kFwHgXciv+vTw4Zv4c6ZaXszqktJK4hBX4tVgIJD0+pBfJj7Mm6ar86dXPer+hOCz
//92gjVQY348ZC3xF0wgdHc9+Ozpo6wXaW8vr3Ngx6f9C83Wa4IVDWBt/b/R6mVCh4hAByKAY33+
Qodw4sZzlgwSqo03RpTRlAX4dvPwiZP+ayO/NN0A2u0lvoGB6/1252Er+qa6AvYNNFSZqHrTl/nZ
dXTWHzLcZfgQS60uQgDNL44NEsW7iAHkXYiIjLyV+6Og/oaGSoaA/QSC7K/dB8C/SC9WXW8hX1TP
L+1TbnFednHW+enKBoE3zs1VIQJO0sQ7Iqz3GafpJ3M4U5SCWmqFc23Rn7VCt1AViAAi0B4IsL0a
Z9D2Z0wmKDhtdJerqVtIyW3ddCOJD6FLA5OV+9eebULDYhZDcZc37LlfzV7R7yxo30BD1bRwmf93
ivNuOAC+DQ2Cp+ZoeeEu8qo2azKyNg/WlB95LJfG2QfAtyRfwb+Q30D/8aQBKyP3dDs4fH5M7Si5
gZwtPI3ixbQQ4D9RvOVxHP4JTKiTTSDQuOsS8EIPq05bW9uc0TXrVPyNqJ8fFXXqOv95dKZ9EWj5
c0awk25fFJC1iAAi0DEIcLxdQ46tY3QT9eIPEWjefCOj/Pnx5bYmGthrEJ2VFPq7rbj6lUvH4g/Z
CADNfNedVnh7xzRTbQXsHfseZrbLz72q5FrDrW8mb+W/eOu+fuHmHdMKrm9109Pu1U2rp9KgWbtT
yhjM4pgJep26q3SSl8WRyKIKKp26aw8IyanbjEsvurNjmkkvLbKmnqKepa3PqVeVAJRs//59vFNr
XmGrSPZR67/rNbXknKO243WeFe7mmYdyIwJthMBfW11rI/1FZrQKgeaMzyivQsaarUymiumMnu7Z
U6gg7c7VU7c+r7STb04ljVvd0Bv1LHH9pr7rXpW61dk64BUo2c5ZpFV2Ozxi70yLj0Ivjzrxv2LP
soa38l+8dd+4/Y1fpWTuHO92a3js42PmJPqnK37WY6d3Tjw+6WR6GQD13T4L55yQR0EWPFuAKJk7
x425bBOZEGIjL8yoeHdp/5mcckbPP/sSR+O9QFfbNgHOEKdtm9kk6zh9GTJkSJMKoEz/NoFmjM9+
PNoQmEwF7XU3r0UFrty0eWfsvRdJPj1FGnlPvr7CfRPeqH/0Pmp6fxkyK8qaYt9RO5K/Myrrv+su
UNGfcx/LHmwOeQU4031xEXvWrAuPPTGtK5TGBka8owJ77NXqyv0CggkIeve+MnV7aJlH4GxzTH5G
qLudX1Cf1MAzeY3peVWmbj9UOnn7Iht57PUUvLjqyEVLHbnea+F0GiUQgToCzDb8qbOyCSlOP5qQ
F2VBBKAZ/uzz05RSANURozVEgV71vaiooOgHCOOZPxp+T57nlfXUikZy1r1RL9K1j9vWw5HXog74
9Xofs2bB3mzQ5H3XXYvScIsAlK/P0n4CqNlYyWHjRpxUbycDYYC3d3NrBaZaW7m/lD+YgKBfFr04
61mFmpVKrZAiTkq3f7evT97XmiWgDFakUr2uiIAs6BQi0OEIIDfW4W7pX+pQM/wZ2yIc9uod9d3B
fmraXdW1ZW32pL2K49fXr2Bn5lW4L8tpOGedyj6RXvJw15Ip9i4zNidVA7x//IEuzXrXnSOuL57b
cD1Nwdbayv00vmACBEFa/gJNIxAE6e4Iylp+d75OTx1yD9OZjyqg3vuPjSwOCqoKnUME2iKBVnZj
zPK00An9NFlC9T3k+oxb97yRPx2byaOJq+w8Yvmy0haTg5+WsYN/CGqPdyFfUI4GzgkQxa+vhQ8l
5+zJOAXPOCzWAACzKHpsD1yX0RfLGqiynZ5uhj9TMDEmAby9GJNTTeg+KvTEEkOuPhP7+t+9f+f5
A+y/hxtNat6EFvTKuuCctW/UU16HTtsYlyE/J/benVgvBQAGlSH4aS24HgBhecPeEgBvbybmY1tV
mOVpMc8pAGoDVNjavQCtrdzPfvd+97whmriXx/znWnnGfGEAS8ufzm07QVrbUPxtYm7tK4XM8swH
haqD1HjWy7iQYvo70toGYjnsIlIDdmVm3g7WpZbTmIAX7SxcVfSz5hVRekVJlQhJrBn3krcZdIQI
/B8JtLIbq+0JJXvP1KWRGaJ20xatnD9+YJf8V4WNTe3XFvsT31LWM319nVRKXl70mRuR06AVrIX8
gKPJjbg8wdaxRfGj/HRqH3ECAtYD4Dt3V8gMf1TKxNzZ/fC3ql3/uPyUYHP/4NlmPAMlLVb5mBLh
1SqbYePWhF++9+wryy4Rtaa+Jy+i/uucTHo1DYAoKS3NzLl8/XNtz3nedWc03mKnfn5zegLzySy7
ibPWrJ404r/D34A00meSaq3gc2sr9/MHExD87r2Y0YLJkkeX7EsqZQBQP8f7L8922DiKI1la21fu
bzEjby+psIXbbnxhbXiklhVVsP68I8j2tRJPjEjEdpdSv8SHPyYNNP1/aZtw24vSiEBTCfwhN8Zp
npqf9hlAbsiCpUs2bAg6E3870kYK6N/4lucBGhfXF7Dozj3OE7QngGNDTULOxmthwI5VVgDwLRuL
bCjAjCbuEhC0MA98ovj8WviY0L+YwTjz7JOPSpiMgsTTXwaN6sVxf/UNbrfHzfBnINxz7pmknZ6D
uuaeO7Bj05FkMTOn5UscenRp8nvyApX4edGJ9PQK8NQVue9nOfZQmTa59iLvu+7ijbcoarQ05ta6
UcbUxP079p54I2cza9/DA1ybG1tduZ8/mIDgHZ/CegtPHRuQNLmPrryyUvfp+SuiNw1mRY+r7Sb/
t7Ce95lTjtm+g3p2VtGWN3SP67Nksb4YgIiBz4GFVZsNNbVltWzWM+edWKRTuy7HXwk6gwi0GQJ/
2o1xOiqm7TKoE+RH2GvISxsPn7g5NquCCTgi3/J87asxjYvr8yy6H39XK54FjewJ4FgC1O9fP6bd
vZUNIKpvqSYMgsxo3i6BuroFphrQwpfQG2OVdyqxsOBGZMHQ0Zodz53Bv6UPUp25so/VpqJRt7L+
jjikwN8adpJR+sR/gscZ48O31/Xt0py/KRqs8Y9eaPl7+3/UPFQ5NwEcTvA/au487S79W/ogzKoP
18MPHom9ee3e6xIA8oTonD06KdsWzj+UkJlfyXJJok7nX8X0z11qOijg84Cz2ecH3x0p4/6w+6zr
b9aLB/btv+aTQ3zmskRrq02fh1zMPjVc7NU6C8u1uQNjsjYkD8GeJFfPdZs2bC+3hpOkU9TnYwOl
2ITpH/cNMpz9oha39IjI+4fGKxCBXnSb3wwbxgVHNed7envSb8xRJFY9X61lJahmBp3GwETx6z82
KFnrB02pPpSwSVcYyuKHGuydmXphdGeA8hvDjXZ5JoeDm9UZ3wTf6+M2qrhWRZYHnzby6bt/TkrU
iE615v3fv1v+nKkP5f/epX/DADzJdMXljOcb2oMz+zfuCOplRyPAqCqukrOdseHU5Qf5Kev1AApT
nn3IbHh5vr64PoFHXL/RRfeG1vJrkcqO99+5aaQcFF/0DXpcyoSW7BLgX5ivbYXrm6OFD1ATsJ49
e4MT7T3G8tVq/8/DRmp1yPkcwRNjXGQ6VJITYq1D9Qp1BhH4Bwionx/VrF5Wp63oPz5Ry9Zarxu8
ikkHkNTsJQMPOcvzR7Hl+XpRxxpugLXoniN3N+Q94Ewc9CUgmZVXWNXBXm7vwYehRx/IOZK+Prp4
9qXTiRglSd6KSHpDxiyf2OP1fZfw0JWhc+LncO0S4DKjbpeAtMUAJzOBNRMeLzWxOAyzbz4NMW14
JxlLC3/h2Vdzl2m+wwLWL9cTA/Z2B1GdqQGrFUWc1IWBe1TJa2/7Pfq3/Fn7vU/IckTgXyZw/Xpj
csO2trb8cIS627n2e3I2/uCtchqIqQycszNgoHxXnQDPG15H/SzH9h2rR4b3Td6uXrPonk5hi+sT
3tY0yNoTQFkQEO47JRTEuxvYzFUXr/c2DTsnjtRvla9h+LJn/kEPpuzyEmQGa5fA7ZDrWxdeNwh6
n+AReC6oKTUD0PLCx5n7JeX/qILBmqHmGx6dd8cC1k+aqBpKEVF12RsxsDOuVgZPWNFp1lTMpCZ3
nR9t2z0jeKrd1tYW6VW33Zv21y1r+bz2Xzf5322wQ66fNX47/+jzqs0sujfOoCNcbflzBq2fdYTf
AeoDIoAIIAKIAJpvRL8BRAARQAQaJIAW3RtE0/YuoPFZ27snyCJEABFABBCB5hNA/qz5zFAJRAAR
QAQQgbZHoMH5RpfxArYMtT37kUV/g0Dju8v+hgWoDUQAEUAEfkVAsD9Dz69fcUPXEQFEoO0ToOUd
6qO/PBVAfUlixopGNOGqX53YeTS36+i57n2w8ISt+vmdHZIl5+w1x+R43k0JspQEavYu84mlYXdW
GXRAiapWRd3at65VjUOVIQKIACLw+wRo7+NOpLKK55yJyaqNbCGovt/WthdUWaucw4tLUC+ujf7E
kYpslVo7eCXIn3XwG4y6hwj8swRoH2OPp4NoX28HaciNOp3Nkh6uTJ6hQcZp+jyqBEpWkDaJLOEW
n7DYwvkeAKTP1ZNnXWKWPT/ibqVNIJFxcoaDll14Vw0gIAw980fm8em2vUVIZFwXrf7+aZUChPO5
6QsU4xcomQ8AJOtFLvm7DqRg0vjsD6P0yR4nM12FnjoqdqsufsHiYaEPDwHB840C37fnKffPHKCp
13/mVqOOdjAC1A9XwtJB1Hb6/NnXIuIiT559s1pXt0a2EM8dR1dI3WPz4ttTg7O7uW9d46CirUV5
5OO6JKJAw2Odr9L9wA37vEbJ694fEb9ifzJj1NZYt24lL1PfS+DhZ5LvaO9DX2Ttvf1HKZS8ZuBr
hPMdNJQly24HzN+8ZoGZw20/5VqubDF+/Kgdx8d0vr9xynZ3N82n1yd2qb1c/1tM18tPZczay3Oj
2KEmqzM2zQyT35r4cbDYi+ARI5bc7HdsmIxAMZL6Nf0zx4L9GQAgfRAAQJti/pl/CKijHY4ANe9S
5AvAmQ/uTpe2NBePjIuKerlMtyYKMQ7P5QjwXfQHD5CH4GyZPo7O41ja9le/gfCQtdu97SRHVp+/
tub5hUfF//VQFoOMuJCNZSbGfWw8jKSp2XvivoCwTVDEWscav0Ivopc83BWwuVa///3jDxSo9WeU
d3FX8gEg2tstmk07Of5NxcSB5oFp1K2YZH79W0CQc1o+fP2c0PRD4lhQjoLkRPrgHf1k8DjQGzte
4eSt7KphMg2LONav7V84btCf/QudR31EBBCBjkqA+iHmZCYAJC0fqsnu4/vok6+XGmqyXBmdygCg
/yislTX8NQV2GPrwMzcfPXtwzD869B7x9QasFJPJ5BRmC+e/NfC5GDWCHvbfyNBCKneIelY+Yl//
hKB+nVjuFC+lLAHsWPZAJBC4fSy7TnGDGb6yI9ddd2RAbThiTmOA43LJdWf/6RRaP/unbz/qPCLQ
UQnkXT6aCaA7Nyw89Ex4aIRfXzH4cPpsVhVRRlMW4NvNwydO+q+N/FLT/Tpt+8hbuQw1e7uuQLmx
1jv4wNoluzIADJwsZIrvBB/LFNGz+W+8na4QUIsLGWoOjt2AemvxhNX79+3dsmhPegWXcP5lTL+f
58MS4wcaJsafk5N+/4S/t19SBUDl46WGYnKGC57WLZTVFSN0H7N8cHrw6Rwq4GXNBhJuhT0oYjAr
0s6c+qxrrYG2O9aRYqWQP6sHBB0iAohARyBw6VQGgPEULzdnpzHOThO9pvYXgvdR5zLoSm7rphtJ
fAhdGpis3F+upqssbXup8utbF05Ye7tI3CLo3FY3/eKI9Ss23xGxmnk4epaGMH8YepJ5QNR2LzOh
hF0rZ/sdeVTGFOnpFeCpK3Lfz3LsoTJtcn2MLDF+T+OycN8po6dvPPG+R78GxPi5C0qZzfXRLv5B
BRDR9dvv+WVJPzkNI6frfUMCbKTRAI2bFMA/Fp+6Xud/edhyvedfNoEyIAKtSwDp67cuT1TbXyPQ
8uctGp/9tZuFGkIEEAFEABH4gwSQP/uDcFHViAAigAggAn+NAPJnfw01aggRQAQQAUTgDxJoJX9G
zd4zEEciS/x3tahm8yolc6s5jkTu4nW79Jfm0z/uG0DGkQx9XzSgSNNQhobO/7JFlAERQAQQAUSg
gxFoJX8mpOo8xRwHFTdDbxYyMETVb06cyAEgu3qZkX6FjMEQN3Sbt2DeZGtZvjcKf1UWXUcEEAFE
ABFABDACreTPgKBgN89SCKrv7r3xjQFQ9ep0RB6Agut0I9z9pUMUFLriSGQcSVHZfsmJt9VQM67S
HuHj1bs7mTj05J3ju3fuDksooANUCMhfc6+q355dZKZCxpE0zBbF5LHE2LjvYvX7y8tc+3bBGpKX
Hzhr19NSlmvlzoLSiAAigAggAh2UQGv5M8B3HTbDWgxod0KvfaRVPjsW9QFAbcIEfTE8SWe4367j
12LPnFk74MeDIx5zOZLRRZdif9ov2xjooSVch7eR/AUXrsFIn8WjFL4/CZ3pFvmRR4+zKm2ds8fW
G/hxO47HhS3SfXN2gZP3xSLk0erIohQigAggAh2ZQOvpXeFkrKaO7HTtdHJYdJZqWkw+gPb08Zoi
jKrq6uzIbXue5n2vZi+tvXnygWLJYirhEnIgwJaEDddCayEzqA3n7zwhOGCVpXhh90cXPO8/PP+i
3E2/thhQ3l05mwMAWQe83Q7UnH0Q+7rKqS8mfYY+iAAigAggAh2cQKuNzwBwJPPZzjIAacEr158u
BDCcPFZViJobMdn31IMi0y0XEzMuL9MBADqNXrNnpIuqXH3BlkbzA7sct2Ba/dtDdj15687zB9h/
z+5fWIvi39UHhI4RAUQAEeigBFrRnwFImE127Q7w4VbqD8BbTnNUIgKTVk0FAOFOXTsz31yJwfRB
G/00mv97pM/SjSFbZqx8wABi39H6UlxVCavaj1EHKLy480zym9zXSfFHF88MzqC3av+4mkNJRAAR
QAQQgbZFoPXmG7F+ielO8FQ5sCkXQGTg3KFyBACCuvtO7xtuO85PHHh/wNj+qvDqXaMAhBvLTx4x
mBa1JfhZGclkSlDEfz2I8LGuMtHea2LCmYs3HTjg47ofRKTV+tjPUuFal6vLiVKIACLQwQig0E4d
4Ia2PNgkTuDkna2tLYp/xo5/1nLEHeB3hrrQjgj8g/qN7ejuIFP/KAE0H/dH8aLKEQFEABFABP4S
AeTP/hJo1AwigAggAojAHyWA/NkfxYsqRwQQAUQAEfhLBJA/+0ugUTOIACKACCACf5QA8md/FC+q
HBFABBABROAvEUD+7C+BRs0gAogAIoAI/FECzfBnNSLCFpteU2oFhckslWGl7v0nLo1687NG9eOP
2tv8ypllycfCbn6jN78kKoEIIAKIACLQfgg0w58J6JS4xYSpM0br49LjA6bYjD72HpMC+X9+mPRa
Ka06KxhlTyLCbmHK/eiDCCACiAAi0HEJtMyfKQxfuH5/2MWMuKmKUHFt056UysqkxTo4ks6cJ5V1
zOgFcX6OqjomWkYmvade/MqoTN7gYmBqptpLr9eEfak/mUDL2znYfMwid1ODXjL67iFJN1aOtlRW
1eztffUrHbCr1kZDprg7ujib9nVZda+4vmY+lsHEftZk++HOHmeyH/FUTi+I9w9+krnf087UcVlC
GbMi6/hka1MVPQMlc/fg1PK2OaSsQ4dSiAAigAggAk0k0DJ/xm4ERzIe6yQPkJ+cUiRgGMT4ds3/
Wu+TT56+Tk1O3jaYjBfRmXkk+Unyu8yHoRqnF0d9wcpUf8yQWZjw7MXj2V+WuIWpb7uVmxYxMDHg
eB5ryEf59lV3eVRUzP2jA+MXb0/h8pU13aTkf9ZeHnPpwvH/1HvzVJ4vPWz5YlOdmUevPrm8xVok
a9ucU1q7Et+lP8s8oHtiYWhWEzGhbIgAIoAIIAJtnEAr6TcyWQMdHA7EzAPTqFsBT6yLNI3vrDdA
ZOOsGcQJw+1dR/RTA+qnRzvmBt98TxfCleQU232hTCCDiJqTk64UTohgpNdNw9xeSRiH07RU+HG7
kAZKACIq9rZqmBS/is1QwqKH32imyryGi6jY2SiLYKxphfUqnyjHuQX0wqQLaa/KZ4+IwgMwq0so
5gUAPTmXUQIRQATaIwFbW9v2aDayuekEmqg7yOsWml49d05m6dOzF74CyJsZyRCYDAqNBkQCAY+r
zSNmsOnWnTG3r8dd2tB/p2XcefMNN1TZngAAIABJREFUfi9Gxt6YpiqUf3qk5QMG5gtxBBG2B8QT
CAQRIg4AhyfimKxrAEwahcbymEwGhX+FDCtOFMPKAJTeWchfea0hwGTgycMOxodYoZhoHCYogQh0
AAJIb7YD3MSGutB0semWzTd+ig1aMd1juI7j4Y8gPtRvjrFY5eOlhmJyhgue1s0JMis/Z5eQDIdN
9NuwuH9panZ5WSleXkNWGGifr55K/9lQH7jPV+dFRz4pYTC+PzkdSzXv27VBL8yklNevHCcsKVRV
9BOb1CTIWjh0urXl7LsqbCBXkpmSV8HdCkojAogAIoAItF8CDXqGJnWp8vHpsMcg1k3PbunitatH
KQlBnRvjVMD4/tR/3JqbxQAMkd5Tdw9VU5cdFT5n+GhlGYlucgpinHyNJESVTKtDrI1mfKhWm3k4
3LjhMjgZ61WjjvJUju9i5dZ74yQLNbLV/rjdS46tmT/TWcWfSQAhjTE7Y4yV0VCtEfDoEiKACCAC
7YZAO4gXQ8vbOcyjZM+1tb3+ejQzl/G2TZy3bTc3HBna0Qn8g/FiUHyrjv2jbvpzuGXzjR2bIuod
IoAIIAKIQPsh0LL5xr/ST6Lygpu361qi50ct8PJP40xsihksDj04EouFjT6IACKACCAC/y6BduDP
6t0cgpzLnksu9U6iQ0QAEUAEEIF/nACab/zHfwCo+4gAIoAIdBACyJ91kBuJuoEIIAKIwD9OoBn+
bEd/HImsv+cdW3SY8fXMQGkyTmf1U+xlLt5PdeZKAzKux7SEJr1cxluW54jy6tBU454KOJLJigwK
+wq94NZSByOFnnoqw1bH5dMBSs7Zk3EKnnHf2S9cF0WP7YHrMvpiGU9F6AARQAQQgeYTKLvkLIcj
kY1DP2JvsFKy1huTcSS1ifd+AvBeArZ0LVnBN6Wy9hIr/AhZVMWk35SA6HdVrCdUQybw1sbTEFA+
XvZ1Nu1EwuKZCCsamrgfyKwGjgHsVnDy+v3mRaRXMOufl9bWdwu+8Y1Wr2HBddYEUTH0fYE1IPjT
lDyCS/75s83wZ8PH6wKkRca/x8gwvt05cZ8OSqNddTEdqj/0wZPNp+w7H+Wnw2mjPHHN4qsDjmW/
fHrZ/uHsFXcwL4bv3F0hM/xRKROAWXQ//K1qVwmONskfMgxViwggAojALwh0tpw0f+pYa9n8h1EB
o/uO2/2m5o/yXxSrd5n+9dQMr6CEPPnhM1YumT/DsSfzXVYhl3siD5u9dtF4E+bnh8cWekSwHs+s
GsjD5qxfNstF/XvaRf/h06I/c2vrNlQnXsrIbd6CeZOtZdvnBrtm+DNlR08dgPRTlz7SgFF063gS
HRTHuXa5PL2/DJkVCE2x76gdyd+51e8rk2dokHGaPo8qgZIVpE0iS7jdLgdmedpRj4E9iSQyTt54
6Nrrn7F7I0iYH4hk/X7mGtIiHPdUmXX2PmnimJ7iOJGerhPkkmLSsX2OYgbjzLNPPiphMgoST38Z
NKoXx/3V+2WgQ0QAEUAE/hYB1dGLtwXvvfIg6ZidBFTe91t7u4RJe7vXCkciq6xJ55/YEmwX9Vta
Lg1AbZy379oVq3fvP5Vyd5uVRF1exWHTV64J3D1BFgA+vSrg+EzFYdP8lm8I3zWeDFCdevM1d3sN
1ckoTz2+e+fusIQCem2QSy3HJTNNlMk4kqrx4jjWs5rTNKMsZccAOTKu28gtKeXcD35Ojr+daIY/
E1J0noA5tPD4T5Sie2EPaaDoPEFLomsft62HI69FHfDr9T5mzYK92RyetX3BEzj+CDv1I8nHxedY
/oDg4yePekre3O7udprnT4faYoK+qUXZZSQNshAmXkVSlK3M/coaFkvojbHKO5VYWHAjsmDoaE3k
zgSxQ+cQAUSg9QmkLjLE/jQnKVoc/ia4dqHuI6daigL8TLn7ltupCM7Nd1ZEbaR9D4CcjUM0iD2M
+4zz3Z7wiXs2kFJa8Ontk6uPCwAkLAarcJ5+VYUf32Y/u3zufiEAkNVksadm7edXddbmA4DiG4+l
p2/xG9apPPXwih2siU7WVUbZkx0O9hvviQ/bm3B6qbFUM1wJV+2tnGzOfn0hZcf/9FeuSj1x7Zn0
tUQqqLi69hRhPip5uCtgc2Z+JWs4+/7xBwoo8xqJq5MmBoCqnLgr+QAQ7e0Wzc6XHP+mYuJAfmF+
3loaPRLTmWD5YWPM+aqiIcGaosmN5kUXEQFEABFoKgEc9tc4RxmdrZ7O/Qc6qf8Ed30pPFA/3wo/
m8U9qcfVAnvpDIcDHFFtVgJ1OhPHHYKEnbGhhnCSA7YmPO0bHhpz8/b9R8lXw5KvXn17PWl3n5r6
M9bZKq/D0lozjoU6kvFQs3fg5ebhWptZeYR0vYO8enLLKzVUp0lNnVxf0hM2r5zRj9b9TED8rfyX
3yigy774+eDCYJAccvhWmJcqd9VcRf9+sllOVUjJfrIewPO9ywMSKaD8n6sm/nXotI1xGfJzYu/d
ifVSAGBQayTx2V1huTI6lQFA/1FYztU9Yl//u/fvPH+A/fdwo4kE9ouh02h0ntJc+WuSQjIanUrf
FGJbUuilHwpEVeRZQWIAJ9p7jOWr1f6fh43UYp/hL4vOIAKIACLQPALETnJSAFD4tgibd6IU5hQD
gFQ3qbqBgJrLku1bNu3Ysm7xABnBddM+xR6+VwUgYWSpJlLzoKPVf9I13BCTUvxd1NDFOyTiYkb2
y3N2YgBf7qbWraApT95+YuskHTy8PrAsCIuPXPNRnBRw6lj4xdibeXkJ2wfL8CyI/arO2joAQJws
ScACoBAxX8FtdWcpgB/3ImKzfnCa5Cr2/0nW3ZamtE/sMdJNb+Gy9FuvAVRcxmsKM99U0wCIktLS
zJyj1z8D8DpqooymLEDGzcMnTipciPwCIA4gqu5gL7f34MPQow/kHElfH108+9LpRIwS4fFSE4vD
MPvm0xDThvWGxbRd+35fePbV3GWa786d+NpnuZ4YfGVZLqozNWC1ooiTujB8aEpXUB5EABFABH5F
QKz3GBvpyHMfD8ycSBsm9+7C8e8ACvYumiIA3HN+gqt5dz548Uvq67sXrryqBLH+m9cO6oKjvT0w
RH15prL37Vfr9DhzgwANN0TN2mNvs09y0DATjW6Ej1duVwJ0MdCVJkLNipV0b+txXuOMq1J7rUnf
svDo5JuT2NaQjYa6OvXgcWMcM6nvGqjzOyfLrxI9Jodvpvi4h6wePkr4SsxMnTaxCa9Z4zMAopLD
RCNWR9XHOGuLgEhPrwBPXZH7fpZjD5Vpk+sjEFJyWzfdSOJD6NLAZOX+NYE1Jc0DzwV5GpeF+04Z
PX3jifc9+qmLc4/fuSqh5YW7yKvarMnI2jxYU37ksVya1MD1Qba3J6pqGtpfNt+zeWBnTklhRadZ
U+0UuCeJuWpCSUQAEUAEmk0A18U64Nq2if3kP0UfDNl/vUTN0is8ZpV506JyfL8XsfPQqRtfZPuM
8j3/8PQ8Td4/93mMabghAtlq/IieP56eO7xny76YDEk917XhwX0leUqDsLbX5hlyAM8Dl14p+vV4
qUl18rbAd0SQtdlxOXRSt583lg0fE/qao0DIl/EvnmgH+vp/kUb9ppqu61y/JDpGBP5PBJC+/v8J
PGr2TxFo+nO4meOzP2UwqhcRQAQQAUQAEWgRAeTPWoQPFUYEEAFEABFoIwSQP2sjNwKZgQggAogA
ItAiAsiftQgfKowIIAKIACLQRgggf9ZGbgQyAxFABBABRKBFBJA/axE+VBgRQAQQAUSgjRBA/qyN
3AhkBiKACLQqAWZ5WuiEfpqscCo95PqMW/f8N8QTf2VRTfAUliA7SVbaYnLw07KGlXmrX50IWLbp
6OPShrNwN8govuSpjtNe8rACk9z6/e4wis6PV8LprX7c2DtiHSI4F/Jn3L8flEYEEIEOQoCSvWfq
0sgMUbtpi1bOHz+wS/4rlk7en+mdlPVMX18nlZKXF33mRuSwQ0QKaKk662TA1oCjyY24PK5S1Lwz
q6NLtby8TMQBWtIdvMzQuc7kD6FrrhY07Eg7RHAu5M+4fj8oiQggAh2FADU/7TOA3JAFS5ds2BB0
Jv52pI0U0L9F8ce3qkpfqkfGyTvM8LSUIMl2c94eF73KQpmM62rhGfWJxo5O3HXo1MkDpUhkUaNp
B7P4x3lyNl4LA3assgKAb9lY7EwBDVUmLbZwvgcA6XP15FlRtARGzuLwp767cDwVlF0dWXK/Arsj
0Dba1wtL7eVlsCGjiGp/95ivdABJQ9chnaqvH779DXNoHTc4V4P6jS7jbTlg/9nE9evX/9m+o44j
Au2agJi2y6BOkbER9hoRXdQt7F2nr/YeoS1KxOJbOWgoS5bdDpi/ec0CM4fbfkqsflY+jqfP9jDP
25ewyTHJZPq00YU7z4evPrTAdix2uTo9Q2V3RNC1OT5RM2aZ216bqsrz6KR+//ox7eWtbABRfUs1
YQAcf0M3Z3psXnx7anB2N/etaxxUtLUorMhZ+FE7jo/pfH/jlO3ubppPr09UqFFcZJalXMsCMbsB
SiyVLIHdYWfltc16f/WK/cmMUVtj3bqVvEx9L8Eas4hp2qjDqefXMivHyHPFTmvsDrOCcw2pC84V
XRec69KRxEKjisiCoQs1k2PuN1bJX77Gc1M4baPnOAcFSiACiEB7JICXHX3oTrzlwSOxN6/de3Ry
66NrH6Jz9ujQ+eNbsf0ZYUDQznWD76buS3rY3WPLjpXigZfPr/n0toAdCVrYaoW3y3Ax3ef7otY+
u/Li51RVEjeUvKARfYIAQHpEZIhTNwIAncnXEN3PZvAAeQjOlunj6DxOkVj1fLWgyFkKmJ4/AFCL
3xYwgdRdmv2MFtidHSxFf17bMojuymKQEReysczEuI+Nh5E05vUIkgpkIUj9+KWCCRJiHTY4F5pv
5P5VojQigAh0EAKMquIqOdsZG05dfpCfsl4PoDDl2YfMhuNbiZNlRHAEYSE8QGeFzkQgYCkmg8kW
96VTqulMYNAqBa+NyY7337lppBwUX/QNelzKBMovAmnVMeaPnFVzDS8sLgRAraSwDRDUna9sX8tr
G05mxKk7J3bPG6KJe3nMf66VZ8wXbI6RXl1FA5ywKJEdzq2DBucSPD6ro41SiAAigAi0QwLVaSv6
j0/UsrXW6wavYtIBJDV7ycDDxuJbNdJLeuIS38Acubsh7wFn4qBff8qOpDdkzPKJPV7fdwkPXRk6
J34OXWAgLbx4FzGAvAsRkdIWA5zMBEbOqhXOJ8roaUlCRva7coalOB4EdUeWPd/Ia5te5Z3gY5nd
TW3+69np9Z1XycWFlQwA2tcXn5nQ3VAVC8ZV2WGDcwn2Z7a2aPGskd/271z6o1O46H79zi1ptMwf
vV+Ntowutg4Boe52rv2enI0/eKucBmIqA+fsDBgo31UnwPOG11E/y7F9x+qR4X1NKOdftyhmYYeP
2xiSTlF13rdvIu/iWU1pHKnfKl/D8GXP/IMeTNnlJaghCdOZU0xvh1zfuvC6QdD7BI/Ac0GUBQHh
vlNCQby7gc1cnshZEkZj+otH37+QVj5JjgSCutMF9wZru55twg+Kko5uC/lUzgQxpUEr/ccoE4H+
OflqDshNdtTmCrnG22taXvg4c7+k/B9VMFgz1HzDo/PuWHCuSRNVQykiqi57IwZ2xtWGZGYF58KK
N5kfb1t/7AjFi/ljaLkqbnq8A65CzUja2tpGnUJbV5pBrPGsf/p+Nd56C6+ieDEtBFiveHXmyj5W
m4pG3co6ZF1/WFYva2sf/ng43WhEZJ/jucftZDiBHrkbaapttNzD9mqLf6x9dGd1r0ZisHFX3ZbS
Tf/3KHh81pb6gmxBBBABROBfJCBptmbXUpEHBV+rQAabJ/zdD+PHp0qz+Zuc5mm3Q2fWrE4jf9Ys
XCgzIoAI/I+9MwGLqQvj+DvTtMuopkVaKaGksleEhLK0yBqKkGQJlRCSSIt9l33NElk/ZclOsrcQ
oqzRQlmqqWm+596ZqVnujJkUlXOfmLuc8573/O6ds9y59//+WwRk24U9zg/7O3WmtHAIWO8gvGwx
fSM3s56+3Fq4mcZzBD3f2HjOJaoJIoAIIAL/MgHUn/3LZx/VHRFABBCBxkMA9WeN51yimiACiAAi
8C8TQP3Zv3z2Ud0RgYZBwF7kIqwOlcUP9wT0MTcgU2kkTZOOE7Y+LsoI7kAjaU9K+sGTh1FwY+mw
TopUGql5V+fVyYXCVXtB0KYo0XqeUgAk1Nfnzs0j5E8jUTX6na+Nh+W5JfzZRXRb9pwOABVvYsyp
NFKXdc8FXyGvmWB/Rc5au14hTzHjdbWg50Hqimy9tEt/d3bBtMVbk7K/AUg31W7f22dfjHc7yrvN
vcynPtH2v54cZSZbC44zhBokdqA2yqwFt5GJ+kxg3rx5wtwLDw8nOER/umF4l4X3KhTNRvra6fx8
kXQ5Mf17D4KElXnHfd0XJUr3mxlscn/N6pBRPm3uHXJQIRrrE9qc3EGe8Gl6waJwff0bpjrjxnSh
Epnnz1HJqCRL8SRU6OY+zlqFDCSF9q24XyUTTMlvi3CbLeG/AJfwZxAmIdrJEuwfuGPx+elnXdR4
HKxOzhLs9zrl5V+9r67XhLgiRrHMkucnQodYtZWl0kjU5mrdRs4+/Ow783uiuzYecIgVEIjzf/fN
AjEUyj9e2+Q1sIuKCp6mhXmXMUuOvS0HKD7jrEGi0ix3vMPw0jNDLWkkakv3Gz/4D1X7yM7CLlfT
zGr6vrSfLJWY6kRoDRi5sd5e0Uk5moO8gwNneA9sw3ydmV8BQFayGDN95vTxvdl6A3WGSpgDv1dg
ZQUDnezfQ9gYc3+/ExZ9rwJaL7nw36HlCyLX7L774KCbCl7TityTQf1VqTRpM68dr+jMghubEn6A
vlf0Ar9loaO0oDh+R3IRoQg9oU1V+Ja628O2DQWbBVr2C7nwoQKArXzf33tSHyq7oCKx9PVZGTX6
e43roUQ1mcIfskxrkN+i6LDQ6KVBHrovsblmdcqfBG4A4/OlEGsDGolm6Thnij6VJu16oaj6bPNK
+Ffv51ljsCZqWDuP/zme/lIzwf4qqyUvto217h2Z8lXEPLgqsUQrNe3PyrP3jrP0XHc6Xb7vRL95
k3pTn11cPbnPoJj3us4z/KdPneM9SA/zQ9FqjM+c6VPneVoqs1WjWd4xPsRP7TB40c4bH7QGeM4N
mD7VoVVx0qH4nN+aitL6Tw2ZPbIj88PtvbM89r1haZtJRKORJy7/nJpdAdByhF9AyIJF67fEPri+
qqciQOW3h/vXr12/KymPgYcNjBnWUZtEba7rvGC2DY1E1Xa5/B3Y9yJaDwyc0lGPRqIaWM45h31v
4efNuX21tNTxa11HzyHwwKsyoRiFOQBQlnMmcGjXZtgXRkPdekL49Xyu0QzrBsiXYw40EtXI89ZP
jjPGg/292regUfrFvnl3YbF7T3U8RkYTi8mHP2K5y96cDXLrrozZ1NS09Vl3X8woikLdRwcaEoEP
9x8UARgMcTVkT/9JFFkZVntXcvvwx86TXPUqck4GrX749fOzN5UAqvo0aZBW1VMFoL95/lnwJhsA
ndDmT1wm/1OPlfsP7vZscmn1uDGHP7CnOmUPbii6r/SzIGEFZWh7LJ9jCADNx0VsiV3vwdbXJ8xY
ev9kUe+QiMDBLXjaTYCXwZ218O9at2UvcBerUja77z/Ufy+ftW83A7w23CrUH+U/3vjpfzl8548t
4d+OLeHPPsouQrr9vMf4HrKaffSebQe3r5xlgb2+1t6mJfYuHC7Yz8AE+/mM/mKz8kfGek+PuE6b
TgV0blbT7kdoGTW831jyOHJZ0g+Q7R9z7tRwTSmonGkztpVHwtWILQWpq6OGAXy/8mrvmZwSbafZ
iwJbSfMXX5IaNe9EHpC7hF+5NpV9uTFL8j8y5AG+8ycWe1un/+RgL9V+Xy9Z7cx7/yyPDmrJc4cM
2/fk449KAHldq1HLNy5118vD762pOHr3yT187MFXJYuJG89EOGpRmN9St0/wXHLsJUOn9wS3/K2r
U+WcTzw70adJ2Zuzi2eHbb3w4itQNMxd5q9aMa2jWDcLxHb8TyWUbTnEQTs6Jiusr2GYkm5na7tR
U/ym9m7Bc7evNDXMfd6xHIqpe4AHLTliLZ9vhRfvqqxbMf9E4PKE7QvWeNhFmpGp7QbNXxdorEb5
+mD7lJCdHtMse8Xb8GVjbwpzoOTJYmfPqFcynbyWTtB6EL30xHyXPNWHJyZrsPKRpUiE93MKzpz6
ERAU5qkgt9FlVNRzaOkcGNpXrfDZe2kmE0pTlzh7RLwy9l6z34n6JHpa5EynUr3HO5xUa/07RFxX
tLf+EiB3X7156dDi5meOL05/lc8Zf+GTfLb8MNZgiylCX5p1jkAm300Nqz7FNmyx1+Cv9LVrHqa9
KlQwE0Nfn5WR3H1dTMhodcFrVb7LCPfuKlIg3cJKReoSAHBSlj5eNO0TAJzwG3OCRT4l4UWh2ZWr
X4BiG7IhaJDCwC/xNuvecZ8VPgl/9iF2EZXFj/ccuFMMQJLX7+us9frAhKkP6apOW88GmGA3Omsm
2F/xfp+Xh4HXwdPTTRQJv9Pc7tVgvWb9GSP/yR2MXVs3G3V8/EBWt3Yxg4Tb+Q8f5FVY6/3CKqPg
4bUPWE8/wclAFpj04sIibGJGklP4rfknvSjv/avX5+/mASh266MvByKaWoF2uXUmcTvemJpFUpMe
EUn3u+/ZEX/pys07Ked3pZw//+pC8vqO1RdO+bsrp3MAaKM2R8+xkftEu2ky/l71UQCV0cuDva0q
WhyJTLj86elnOlRCWdnLQ6s23M/5Wsa66/fi3lu6kP5MiAPRSufjXgFojNmwzKer/BfNG2dck27v
S/46aQiraBKZ+NJXHLpxa6Q9lf400nQ2gLrn/i2B3TkyCvSn/x3NAoDMrX5jtrJrcOvU81Kn7grc
9UHrjZaAVkdLKjx7ffrEy1mmJtiYjVleWs5qYBQ1NRRIpBIZrJ1iVsqot9Elw6uC13nlQM1/lQcg
o9NaXRqYFYyKCqBISVVdfjJENum4TUr38KRoq6b4hUpW0lOENxhYeeVmMgBSFKyRZBI3bsQZFTWb
s+KW8Z+eFkP8Qxe0xmU+yjKw/ow3Jb+1oitYyZx//Lfl+ST82WWxi6h4E3PtwB18ilZZeD10wNTz
38yDkje76rCnJ4KC/Tys+B1nbUtRTbvQnl67nTPJpB3nq0qcsmZ7BQcAktgRbGiqhzfi2MHP/rf/
Rhmrt8L+2s57+BPr17DdzEoWfNYn8ficr4j0JfZ6Fi6hadDae++OgTRyZTnW1C6dOthp+PCQxEIA
BtbUsjLh7fKoidM6UQCwdpm7HfcPWR/ViW2b/hpvFplYs+g4PvLyD4BvWLPIV3TD2GTSC7/KmQ/1
27jvdPrLp8cGyAN8vP4Q+wWNfyGRpIi7EAVaEykAkhQFu3AqmVCevW98QOytgk4rTl9LPxvUDgtM
IfznLPEdYDvEusAYdAYTGD/y+KfuygYaPD+JE1x8NLeDl68+voX9Pbp5MqQDd3r+SqPtRkWgSbeF
/p0okLmo74ARc0P9Z3p26eh+rJCgiiRV6yn2CpC9K2D5mgWLDueC0uAJXaiYCL25vIb5zPtcN9SI
bJ5RdnDQgIrbO3bfyspKu3kg3G9+MtaMES3V+vqHLmdXtnQUOyORMd59cq0IrMnp97FVAcbVkGmR
G+bP3cl/v5El4V+ASfjzGuPZYrw/MnbElufQYpirVsbpo7HXPmCNKJ1PsF+AFY8NzgapSUe/fbva
H3GafDCLMy/mHKuNz5r1Z1I0s67q2OA3/i7r0dbKvNvxqQCg3rmz+i8mZ9hUVdWipxYApO48lU0H
BatlR3dP0OHUhtJUAwtol/+qAKeWn4VdgkrNlX5tVm/86gMRY9uR4fnWoOiHP+iimlr+dpldurB2
vHE0i+WvNzgYtegzxjMgZN78oKVXSgCUO5iw4wWyCEhr9xqsB5AXOy1o7arQmXN5JmecU8T1yawo
w+7iyzRVb8Z88V98BtchglUhDijqO7i1BPi033fehvURgXOSykG6+9iuzUjSKkZaFICXh3Yc3rc+
OPQJgUmscIOBww0BPu91nxy+Yff2pfOWHPtQIWPgMKwVQP7ptUdSXmQ/T07YPWfKynRGza534nLR
3vpNQKbNtCPJaz17qb8+smXdyti7jI72JoSCwmR1t037F/elXlsTtuahxqCFB7c6CLsrTWRTvVvU
sWhPy+I9ARNcJ4cdeKNtxSOTzw0J19dX+nYhYtbokCsFCl3FzshtRMh6EyJrSlZRMb7dlbMPRcRk
tBmAP9PAnR2X8If0k6kc4Xzug5x1+sd797HXG97HLpoxznvqqBXYFiMfF+y3Fy3YP1TTwG5xeuby
PkaaQ/Ziv91jN0ipPYIPbWi+bdCMeOz5v9pdft1LEJYn3yFgfs89ftdOjx/oOtHJFDKOxJz/DooO
i2Z2FmcWKd8+YLnLfs8TyUG9Ot0Y6di2acHTL5xy5NsPs1M5dOzd1inuFf01Xp/c/xVAy2GokSzA
Lzp0lfa9R3iNsCx92HZx2opZu8dsoVc3tbG/aGrxdjz0aU7stCA9d+XbEZx2HG8WI8OzTq890i2g
J7Uw89bh41/9/4up6n45bjeETylaz5GDk2KvHNt+/kclUGimbkHLV3ZvAvC12nu59sEHlmd5LInb
vSy3h4drG9jyTFZRhniyhvUlrcat9bs4Zs1xd9ubPYZbG8Cz19W2BNaEOSDVPiR+V4Vf6NZdITOA
rGoyeNmKKC8dCoDqwOWLB44IObvVf36vcQNbwQ7sFqLAImey6OR+pn/Y1rMrp58GhZYuO6eTQK79
4vg9zDnLtm71d9sCsiotuzj46Dd2OVYBNP/2DnJTS8/oJE8scHTV0qFKjFFx0qOiSez9tJ4hcfdD
qhJhK/JdV2YwV/LswjaIbILLqDbMAAAgAElEQVSZ564kz108ablUH7kLslmS8m5JdULRGavTAUhp
+1zP9+Hewy/eSGpKYA3U+y65lY2VWP56s+WOOG4DACRV22nu6gmHdt0usBugylsERbeaT24RD0OA
iuxze5PBKMTbHB8hELKi6HnE5XrwFDjzEnb/E0C1f+SVpzxHammjhv0ZSLf03H9fKTJwVey5ratO
Ys5ojN4cHzMKa4TEWKS0XDY+orYPWrH75JldEWfIimr6Vi7jx49pJQskhd6RiatkZ6w8fmLbRgDF
ljZei1ct7Crurx4yxl7LvTcN2fo4Kvh54hq/i2PFbGqFteONqVmUUu01e3Ov2YLnh/urUllWLNXd
b4uXruLPpyfmBwEo9RzWVh6kFLm+TrIORz9U3Yvvt+Ts56pv6JZtLOvWfN891l6hDoCs3uCoE4Oj
+F0jNWnvcyaj6lsctZ2dQIHLGWyXjPaAZbEDlvFml9UdGH50INGbSbzp0BYi8M8SqJmEf70V7K+N
+Gf01/snWPqelx224/4WpxbidWj17/qpzL+5a0+Wejt2O37oudLg+Np6HE78+D0141Kb8c8Yuaf9
7KcdSfvKAGhiYOUSuDxkskXDfJ6zZjABoK7PV40dEydjo4x/Zm9vL/p9ahT/T5xro4GmEf/7WBu9
j4yB+9arUptjn2ffyikdxvPWegPix6wofLR7YVU7Pnbz8pDBwu6iN6BqSeyqlObg9amD10ucD2VA
BBABRODvEqiN/gyApGg2yt/s79bkd0tH7fjvEkT5EQFEABH4mwTQ815/kz4qGxFABBABRKC2CKD+
rLZIIjuIACJQvwgIauHXgr7+t8f759l3NJSi0kjNdLWsxyw4n0vwBiemt0as5c+LqDxzjTWJSjPb
8Jr17Hpl7hFbFRqp3aL7gu+4imWQ1zzxFv1ZzETLNlokascF6ewXcokTNri9qD9rcKcMOYwIIAJi
EMC18GfsSvpsMMJ3VsDIzuR7ien8r+TjZtj6+l9tZgbPsvx0MmSUT4KwiDH0ZxuHd/aNufhey3my
3/ypLp0gJfbyB+LXqCi0nhN8Z/k66gro/XE5L91y0EgTgNRDCbjgbOXnqwduMkDX1Q0XleJKWJur
LOX7uPntGp28AOrPavM6qV+2mN9Sd4y2MsLVS7U1uoxY8lhwyFdTj8UcKvIEbVJT6TZ+5f1i4VIE
NY4ORTDeZORdnutoodXGVL//onOfGAC4nLGW57mv+IsGzIITw7VJyq6nayOGVE0honx1SYBQC/+3
9fWXRqWUg/GSS4lxUcHLlq89deNJsn8bWcbnuMnWqjRcfl6nu8saXDm+Iv/azo2rN5578wOfqKlz
a+1Xz4qk9QZ6tgNIiz3zrgIqCy7vT2aAzgg35bOCBqtolaR4G9JIRv53SoCeGW1MpSmOufINmET6
+iXJc9qRqO1873GpnACFZmbV1VBFVuhrpVUlNbQVCfoz7mhvPO2Ubgtr97lxL35UvZHED4FZdGeZ
Tbv2BlZTTuYLb834c6Ht3yNAf7lh4txD6XIDJs0OnjHSVvnTs3ziceTvFSNObqXeUwICnPS/PD3t
P22fQOSgKgt4dKjI3SkiuryqtDwrguPNb9cWzznfY+/Lp/fPOtyeuuAq1ouRm7XQythzp4gJwCy4
ueeVgXqdSKLyeIY2/hoBQi18Vnv3u/r6g10N5YBR+rWgIK/gO8iQmSSKepcxEdsPJcZtnd/2Tfzi
mZteVvdYbAI8Wvu4sB/rgLSO82isQ9uT8J5ecGPX7QrQcR7dWvHXBsm8mnTfhcv8/7Vz8McLlqA/
I/BNodvoid6uZqS0hMgJdq573whpL0vTD8ZTliS9urXFiVZVIJOBolYRIK29XeWfUj8AaPSdOTdw
6dLoIwlXDtkpAeFAsjRtrimNpOno7WmjSFVr7rz63ImF3fRoJPVunnHvK1hTMfV+E8fbKlFpchaT
tmVyz/MIR4V8tdCw85oVuWZhTwD4/PJzBRC5USJWdCjCqFSC482SzKM3qe7D2iiQZNu4jdZIjk/D
hqfyHUZ0fXnwzhdmZd61wx97ubRtdLdb+Lg3qs1w4Yuk9cT19ZcGTzDBdPVE6usXpK7vJKB4hKvJ
lr/eZtUSU51Vs9vwvIzJ+HJ7XeAEh6Hey5PLAN7c5QjFVruGa+17eroa8xQKANJ6A0eZATw8kPjo
ysFr5aDv5tZGVgyDvOq5bJn/jyf8xoz23JxRCeUpCS9+sqIEENai2rNGtFbVvdSoTlqDZoVu2XU6
/dxEHfiZuGzDgxLB6S3jw0l/72Ovb4W69Zh8OKc0Z23vjg4+4x0GOXsceVucuX987076ph10u45b
+fAbEyq/3Iq0M2mj27H3wBlebXoLRgGtkZv/ZiZ546G9msKnfQ6GmiqWg9yXn8r8yQQRA8mSuwmM
Ph5d5XKTlg2cereDh2urspd7FsWkslTGytLS9Wfsix6q+uqEt8/+1+z4TgBijQrLv+a+S71++SWA
nJlNSxkgcgOMxI8O9csTWl7wsphqSMN+uJCi6qiVZOfitVA0HdYzJ/Zaft7FQ3n9XI1Qd/ZLkPUl
wQWRC6GXuBY+YPr6bJ08ZnkpSwsfWPr60jz6+oDr69O59fUrGRUVDLYuOl4ES18fXp2OzyqTauGy
40CgOb6//MWOSWHn0jV9T924espLC6CynDsbyz3hWvvSug7jTQEeb5oXeY0OeqPcjMjPRRvEuzIG
Fi2A8T2fW3uR0j38+k22APftsI6KmLA7fy0IaTWSnb/Xn7EgkKiWw500AT6lPCioaueq+EhpOUVt
ctLrteLUjW0jsEgy9E8fjOfFnzm53/XnOt/Y1uuuvU57lLHV5MCsHZnf0pbPiGu/NTn73sn51Eci
AkNWWUcrQgmQ1VxjriZE+oywaQ1Zdw5GTLCZc6OYKXzcJ9Ujeu2SMF/sG9rCY8Wa4DnjDAEKXuWx
Ht6S6bnAb6izx6zJrQAe/fcE0yfFFvprPPgT/6iQfZTzkRM9uIvZuP0fVAbv2ujUXAqAwA2GCh4d
CkC1y0DnEQPaK2QTWsajUtV4vCnfbrTN213xx/cU9B2BujPO6Wmcn0Ra+LWkr/9soV3/EYv3nL3x
KBdnx2SUVQBQmqioMLPOXsBCYUm2ULSHjDEFeHv5OQP0h440kvmFQYqqkRrA50vbDxwMDzn0ES+M
UF8fCKMESOZcg0pdG/0ZFt0F/+2MRBJneiurP8BOTxZTaE4+mfpsz9TBnW379ppx+kvp208f792A
vmM6Usmkpp1GuBgj9djfuZYqSwtLNey9l8aevfXpQagpQP6DR28zhI/7FGiqsiQpGWkyQDOtZhSQ
wtaYlewgLAx6GYMJlRUlRPeUBUeFvI6rjQxfu2yIBhSeDoi+W8QE+i+Gn9W5BS2LNd6UVjVsWvQC
/72QUfQ2T05fkxW0lCTXfpjNs0XhH/oPac0TxrS6RLTWWAgQaeHXmr5+9rGta5btTJHv7DQv0LGl
qVekp4nszfk2w2OKjWmSA6ToOrpb4NlaDXM2lgXZNiINSuuOWTLZQvHtjrlRKXrW7Ki3hPr6xK5U
5OwhUr4nTtyg9taGPgiz6P7Rk7kAmp0tVKWYlXS+IHj8PEgUeQr+YA2zkkzrvy1hY0+O1jDj7U7+
xGi7xgTKUhdYj7zW2r63aXN4Fp8G0MSorSrcrhpI7sYGkmIPGRjXAgOisjSub3wDpI6OZoqQgjsm
Y+DooLFpGxb8SWMgNffO6aNPnQ7E6zbh9Zpq2nfYPHft5zeH7tkRvMM3wZdrPMvlRnV0KJVuPZw6
E1qWuju3Y7ftMPXS/Y2CP2xUlSpv7Nb966yjz6YFGb0+diC3yzxTeWANpeXaTYxcpCPr1EoG3lYl
RyuNkwCRFn6d6OsDDFt7dRgnmPtBNs1qif3ehKL+XNApepMeVIn9Y4GttUQbBPvlDz4sZxvYwDFE
pK9PFCWAQPmeY6KBf/7e/Oz9qegFkz0GtRu4/R0o9JvvaylPFARPCCIptW6OTS+vOPoae7qg4kvG
g5wyWqcecGn//a+VlcX3jsQ/F3hESIgltJuIgHSLAW5WCpkJ29at35SYr2/reyDSVrOtyHEfkRn2
PvluA8jnwjbephs4b97sboBHJccOiT0qJFGtFgaYAzwJj75VYkzoRo2jQwmON5VsQ6Ptr7gbGJk7
nO26Yblts6pHk2V0nHwmDtAS9U6QCAzoECKACNRfAhLo6zPebe5lPvWJYVjKtQWtPuPrrHrJNze1
HTcnZJGLoQKpJHmO4PD553WfHksHJSUObAoVOWv7e3zZkBjSFpsZlLyInTEl/PR7phRIGw5bGx9q
BbejhnrteCajZW5r+Dq145lEn1aNoOURXx+6ZldKberrC3hQlhHcpeeyApfLmTG9CW/XCORo8Dvq
+nzVKaBGqa8vmlidXv+ii0ZH/wAB8b+PEtxv5In2xh0xi7tChIHdFHpsvp/ISkXR44R0w7bljUbG
XBrJnR+s5l5+OheLPvdyndVkniNoAxFABBABRAAREEpAgv5MqA10oFET4A+D26griyqHCCACDZdA
ve3PpA1npFxuuFyR54gAIoAIIAJ/lsDvPQ/yZ31FpSECiAAiID6BBqCv/z3RXRtXWMW1H6ms/3uu
ySaW7Be/6gIpcf3S1v43cEXm8pfrLLsurUU9V6w4xsftA2wCnpRVrwg4IWJH+ct1nftszhKRQpxD
9XZ+Jo7zKA0igAggAkII4Pr6C+9VKJqN9LXT+fki6XJi+vceBInZ+vrS/WYGm9xfszpklE+be4cc
VIjG+ri+fnBKuXw718mebaTzUq+ej738IXiAJkFDiuvr//xpLlJfX6al8wx/g+/lH69sOpZRrmbv
O9JITlq3C5WocALXJdlFVlAsPx1yYlbC2BZiZGMyGCDFqxApRi48iZTq4JWb+xqI/S6QuHbFSFcH
2MQoFSX5AwSuTW5GpWkFPCgBKEtbakClkdrOTykBYKk1ak24wK2TUxN/mMUpUX1aq2Ojy+51pEzG
+Hx5eX8LY/XW7TSMOvZcnPytagxYE4dRnn+JQMPQ15cxHBYYFRYa7mutBgCtRy8NCwlon9hHX73b
zrcVAD9uzVSj0lqGppcRy6gSqqcKig6yzju19+yhn9ZtxVoE9lJZdG+DU2cTrTbt9AcsPP2xAnv+
vEqPMDZ5dZ+uw2aP69ShrarZuI3JF4NdbfQMjNr7nc/FZKBKUpYO7dCps0Fb07ajNz/kVqNnFJye
47PxJb3i/bExdr3MrXuZd7eQo3YNfVb2U7jAofO6x9+EKtpz/P3lpwT9Gbe+vgi7YkYS+XW8uy/H
HNRJNL2mLfSbtjDutvIZW4VNRNHoEDeB1n3aAXy8df9TRWXB45vZAPDhdko+g1H46MpbAOPebTmv
sXNnkmS95GHMlqRPTZ2iYq9tdWlBMEDlNlbJqEFkhZL7C6cfb7v+bu7zjNy0c+ucdWXwoZ+v4d8Y
+nHXBq3XfwINRV+fnyRZva/vMGVIjjn5qvzno8MJ+dB64kgjtpoNn4zqV8k09eVNvObrnwk5+5kt
S1iWvmzKLs0V1949vRff99bUwEsFTC49whHNyWXv0lVnJT16cnfqx8Axu1qtupydus/2WuT+nHIA
2XZTdqbcS3mdcXuH4eE5cR8FpQ4pLdz2X7ry6GbCgdHa2oP9x+u+XiUocDj9aNvNd7JTTgY1eZjF
rXPOj0W87V+0QuIZqatUZGXHQ/fO2ivx2v+NiTCvoYa0ZW9vL6m7yu1768Htl0lpP0YpXHoO2tYG
7x9cePZjDCUpA0DHugMNPsdNdpl8PLOwHKCpkfOcdbtmdKSfHKnredls9cPbE3TK7s01tNtB9rnw
YoV5ReqeadNWHHiUz5DXtZ8SsTvY9kuUba/DRQBwMmDk+QGxWfPPzZseceBxQaWctu34JbuWOBkA
/uJabscJ/X8eOZk/8vQ+lakDIvO7TB5QvP9EZtPe83d4FIb6bU4uMfTYHLd9qMp9wTcXK4rffVfs
q6WAjbpkNcwtsHv0p+f4ZEZeimqXu9beNdG0o9TbDzlvyYPX7wu1alqaecB3ypqkvPJKxQ4zt2yc
baFU9Ra1pPBANPALFy5IbBFl+A0Cok+HpIZxff2hxc3PHF+cLlpfPwLIlCrtAE4xVfr6HUOfAoBh
UMaN8Zi+fuTyjE8leLOO6+vrcdKzPnF9/cFf6WvXPEzDCxU2niQ17TprrPb+dbv3PrIo/C8fzGaN
bCkDrO4Cl1EdJG/yeHNcyKP/7qW/+e8TAJzwG3OCVQimqe9u2zUqtZzQcykNp3mDQn13pMVghVfm
pVxj9FljpUomgenwkVoHL78sbQMcPULMoGxLJycTJZK0lIVpc8OuDroyJJKRjdb3K/kV0JKZf2fN
tJWX3jCkSV+yCgd8pLtr8VaYtcX8ejNs1IF2W/8bqvVl38nUZ9+mDo7DhPTKvtC7fvp47zrYrevc
jEyGzqOcWt8iMiDRvt/qzxif43z4GsTOzVjFV3w8PsfO5dDj0pYu62LXTzaW/cbfINpz1Z7wLWze
elTkrLV3Pd/GDN4Wqrqv32R5bSZPy6X49Va026SdL+Sat7dumZXa6ewZ2132c5ofPu2rQ6FnRnfz
UTyaMKX5K972rn3hOoE2seTp/qlTVl4ukJJWMJ51YPekkuWdZqqdSPQ1koaSR4s6zW5+MsHH8K+8
4j1v3jxeJNVb4eHh1RucNVldW3PF5SfTLj97SX30TW+Q+/DEW7E3nj+jPPoOcr176smRGFiMJUdD
vSbFVyJnLF88s7PjlXm24/vJXz69//J7jxG5R85+BN257u3kvyd7D/XfS3ZZs39Ys5thE1aPG2OU
EueyJDhhfNhDqvOSsHHm5YvdAvflGXosCdC9GbV0s5eLpsldH9yT0vsni6aGRBgYaUndxO5S3E1g
TPXomrM5adnA5I6TJ7nmrz2+Z1HMzIHYS4f8i2JHf/dKx+6dYnv17NXHaeJYO84wFU9Ynv+57dyb
61uV3fDrtDxh2lGz7fjob2d7+R+PInv67RiY6NemxhO5LFd2C8HvE0Cr4y6CO9GeuiYg6RnB9fWf
Yfr6s0xNsOkNs7wUU6QHYOvrl/Do67/C9fWp3Pr6FQw+6T6Wvv4zTF/fb76By44DpVPdIx8BsPT1
X3XwPx03mLFr1JAd+RLp6wuQk2vvOdls3aJNQaHMT6TuCwZhMu6s/oxIRpXSPTwp2qopPnYjK+lx
NPWBIiVFFhjQKXTwDlAbsuTCwEoQbMXwjrpKjxAASFKyrN6cLCUlJYvJFJLIFBITCx5QdHXW/CdD
Tl2cZCD96fAQm1uCAQWwajE+npwy/f7IvXF2ymTGDwKBQ5KUDEv9kETG7QuwkGyHBPcbBQ2LCj5y
53z5gAXTrGVY4UUknBezi6r8cm6MuYqeoYpR/9AM+u8K89Mz+We7dAC8TTwWf+bG2pZHlyd8Lnka
OWEVw//867T7Wdc3jtamyLUZM6by6P4XdIAf93YmqHkMMRC8DATJ1Is9Cu3sWgN8uJJ0NTFH3qKv
TT9LpbdXr15MygEw7NdGkUjknk5S7u7TrwncP3j+VdrB07nQauRYY1mi0EpZlDY9e+nJAVA79Hd2
UL6d+Blk7EJW+01cGDHDBODxyTt5rLaD3H1dTMicKeOHaOPghKr4Ewnnk5V7L7+Se3trQD+dvKNT
zB3XZXDfdJbV62erIwOgoGdGK8rOy+WXt2ZHBqgX5wI58ccJNCB9fQE20vqu/j2kv9y7/1Xa2rc/
FpGCveAyqpGh8zAZVXPHTiaODhpQgamnZmWl3TwQ7jc/+ecvNPWlWgyb1ydt5eGsciCrdbaVurzr
VkEl82fqkdgPJr0NxQ6hxKR/KyJrGqrJQMWH87FpnHgbHD9Zn6XP108MK/XfFmiKxZAjFjgk30x4
XQZAz76cwAnsw2tEoq3fmp+xon4QzrIpvSKjA1wUHL+esV0ubF7shv0Cii94WyY4QSYrO+7n3G+s
yFnLmQizhPn55q03oO96TJgfMGH+6xzDXJ+MPKy9486FtXecNlGK1SZ+/JFQ0md1X/xpJVllVSy7
/ihPpUH7M+bOLdh03WBKMNe1xWW8Xq5K0SysdOHhw63bKAzDdW1pbfsYk+K2rSMBaHbrokZhidzz
DypJzawnDGh28timDRs/fYB2S1xbc251CA4Dxaq1omZzRa5RE7+KP6NKxR8XzhccVEpRW3Zza9lt
6NAOeZbhCR9due4+k7G8AEAmY0PGSv7Rn1juoUR/mAAJnwTgMTl+/+d/kb7j+vpNQ+esPnZkSyrI
qVs4zjBRhAzBPGR1t037F3vPilgTlihvMGjhuq0OqmSofmqCK0e1zWNb14CsskFnp3mTHFuaNov0
vOi1e77N8O7DTWnwppgrS41WpTQGzRzY9Hp8eZ+J/TW4vj5sGdU0toxqM9moY9H0mZF7AibsAIUW
HeymtVIQmJLxO6DUeZq/8e5pnwFkTeZv8RzrbaXxFeQNh23cbadCes+fWsg2SbX3QpfdvoNc9VQV
m2toCcQ8xbL9fLx5xY38Jl/GdNoIIGs0Y9emwL2LZ0xx1g/nCBxaWM1b1X+kl+OF5mpUZXWNGt9N
qXLyd/oz4gaxyjRrheuaFWgQ31SlFdKWVR3HV6omwmIJ85PIJPYzCEwGHpRPIBdU5DwA3jaRy1tO
2RSdgRP0huw+1+7TvfYTNqpxXVucFPX2U06/h4X8xjeFnyq0nDuryqh0sNZlprxmgoxJT0M54I6x
xCVyD007e7ioHtu1+zSAaZCzvjSAdCtCqfvq+/9yrRwGqG+KuRjitzJH+/a6dIAOTt3UyBLpSZcQ
COeXZZ9KLOjSv6OmTOW3lw9eMTU8laS+CMFNVu/m2DRyxdHXXTwM5Cq+ZDwp1rfQ+/WXW4g1tLvO
CbA6NiY7HlGdFNdw9PXlLcPfF1X9aMAoTL9z8earH6A8yqenKncHRWnutiZmY0w1rabiauoru51N
dWPlo+j5XsrzZa13mn7q/vRqc8ClR8ilTajQOTrzDCuVstvpFNyOfK+QU+lcOQFg4vkb+I7mnJXV
uUWreZMIChwGJtwK5E3zG1uSN8/vT0Uv8gta4BcUsv5hUVXwEf4odhVXAgOiokLnr88RMS+u8lsC
VX6h81Y+YX6KiqFy4aO3pQD0t9cvvyoDKay945Hz/ynQe5HVuw1QuLzxYm45ALO0IK8Eu2VGVuvt
a5LkPTe9x2QrFe5rq8r9eruiaNzPCHNO1rRnK3mQ1bO2xAWFW/duq0QSHmNJ0XySszqWraOnszY+
4PmliH6TbtHHIsaYFe4LXbD8qmzPKdtP+NTGM4jM0uwTQV2NjdRaGht43uwdHTmI58vNy12mbeDe
xS32Ouu3MWth2tfnxFvue5O8SdFWvSFA4iz1xqN64MiP64HOI1Y/bz0mKrwH63exeuBUg3BB8vlZ
yd3D2+/idTNbfi7c88Zkwlm2fLd+pLNLN6SVscKL1GheLBSgLNZy8c9b17kM9eqijQnzm7eUxXqh
IQtcd05ztGnRvLm2spoMAN7e8eRqr8NfhEybgO2zfLztdQOlZJuY+B/aNc1QBkjNbMZ1pSTTpnTk
C+vFn7vebUvpTL2eP7XKLaXexz7kV20JibGEyUR3X5XBXFWdEIBEOAy025NTNSRo2sFr33WvfdyZ
oDr+E7ZbzjQiLT+ClcDhOAN7NBJb5qXks59zWZnBXMneyf6QazNj54UZvPs4Q7/qgaRUC88brHGh
oLw1b160VX8J/IHpWv2tPJ9nTZ3O5lV9s9jHkIwqHyTCTQnixRDmr387cWF+6diEWgw0U/poaT9P
6W3JQW1qGNNY/HgHwnja29uLfr4xLhY9QS4MnsT7h460F/00XX1+Xr+ex4up+v1M9Fnhuw9pb/+L
M4Kuf9E8G/RR8dtPyednDRqM5M6XPV0xdNTqwr67TrWuYWcmeZkoByLwrxNA07V//QqoUf0bX39W
y8L8sm2DzjwKqhFblKnREhBzkvG36l/P3RMfS1VF+vbtK34ulPKfJSD58yD/LCpUcUSAQ4BZjxfW
o/D11kEOQrE+q2ohVmqBRHWhrw9QkRNjiQvhGy7jeR9SoPiyZwcig5btvltUA6k3AWNi7mAWxo82
xTQCNdVIVJqcFiYW2GPd1TUOFs5xn7B3shmfj47t2HPr63Lc4Lervp1mXjjgoEHSMtZoZaTc1mH6
qffYofLX64VkEdORv5MM9Wd/hzsqFRFABIQR+M1ujG0W19efsSvps8EI31kBIzuT7yWm49FS+Itl
6+t/tZkZPMvy08mQUT4JhcK7oIo35w48xE1kHYnPFPUQbVnmwciIyN0pxcKN8bvy29skFeeDacXv
swtuh1rqe17Jyi5+n3l9hu2U6DFvl4QmFFYUJi0Nyhm10YMlC1GSfuZZ68HGsuRmjnvufcrKfL5a
/1hABPZOtrTBJOIsv+1hnRpA/Vmd4v2bxtn60VVxlTT6nf/t1zz/Qn3oz2ImWrbRIlE7LkjHX2ir
yFlr1yvkqUQvt/0Fv1GREhOonW6MU2xd6OsDQMW7U/vTQK67n6MKZMcdfolfh2zx+/7ek/pQqTRp
M68dr4qS53Rzxh67TZtmqkky8r9TQqSFT5CRDoQ7GZ/jJlur0vCvs053lzUpX7FeUpiUPgcC51PO
xGeT0yO/+etnBd53WeXTnqUDUvbq7H1NF/Oqx7bJtE72rco+FOLB14izcAzW008J+jOe9lG3hbX7
3LgX3FECeGtYo2Ai1dr8hFP18sw11iQqzWwDe7JcmXvEVoVGarfovqAwc7UpXr8k3mro7alCN/cp
c6ZPnTNjlnsrbjWbGgneS0zv9zOQaV0nbD4eN78dt/O/bxZZqDcEarcbq6pWHejrY/fh3v63Kw3k
ekyeMbW/KuQcPPqieoZW9uCGovtKPwtSzsmg1RnaHsvnGAJA83ERW2LXe7SmC9fC58n48CerCnw7
RYgLVlVZ1IpCl9lLLK7fqZYAACAASURBVM8tO9d12YKO+FuoAOXvriQ1cbRSrnqptvzd1XNfug+3
ZCslEGQRVUJ9OCZBf8Z2V6Hb6InermaktITICXaue9+w7sMK1EWiYCICuYFwqi7dctBIE4DUQwlv
sBFE5eerB24yQNfVzaQO27qG3p5qDfJbFB0WGr00yEP3ZXAHGkmjv9e4HkpUkyl3f35L3e1h24ZC
pZE0LfuFXPiAUWV8vhRibUAj0Swd50zRp9KkXS8UlaR4G9LwMSbQM6ONqTTFMVe+gdjjTWB+z9g/
2b69LJVGUm5tHf445/hwOSqNP8IT8WCTQjOz6mqoIlv1pau6WEpebBtr3TuSNVCt2otWGgiBOurG
xKk9rq+/NHiCCUC+aH39gtT1nbi1nMpzzhx6AqQOfVowVGy6KkB2XNzTqsE0rqDv6elqjJktVDDr
00MTAFS7DHQeMaC9QvY5TAv/4wm/MaM9N2dUQjmmhc/ylidjPruD5NvJEhcMnOAw1Ht5chkALuEP
RKqnxASYxenn7zKojBdPP7ObbEbujQuk/tYaUgCVX89N6NJcT0d3QvqgWQ6c2E+CWYhN16O9kvdn
WoNmhW7ZdTr93EQd+Jm4bMMDgnk0PT2cFUzk68mAkfZhN495C8yUiZtIFhnG0/l8U3U2MWm9gZ7t
ANJiz7yrgMqCy/uTGaAzwk35LMFMnAOZuCCitrjG7SmnqHr5+TK4sxYe0L3bshf4hYwJ3vcOiQgc
3Oy+/1D/vZ96rNx/cLdnk0urx405/IHx7WaA14Zbhfqj/McbP/0vh7tKZN5otd/FHm/+SA5w9Yu5
W2HnF75txUSrZhQ1ERGeuEsUvl75I2O9p0dcp02nAjo3k/wiFm4YHaljAn+sG8P19QHT12d3EMzy
UjrrlyxFTQ0FEkmaR18fcH19Ore+fiWjogKXyqtCUv42/mAGADN5Xj8jK99zPwHenDj4nDNDk1du
JgMghQeYYRL/ZkbpHn795tXHt7C/22GciRJhRt6dLHHBdE3fUzeunvLSAqhkSfjjSoG8TlZ5y73y
81F4wM3Bh89EKsXMPPIOG7gyv9w6W9Kntxb2iDu5mePOux+zXz4IVd7qs/Yxq4cWzMJtsH6u17Qp
IFEthztpAnxKefDmlkCz+FnLZUmwhRSAivOSTYdmm2l3GROx/VBi3Nb5bd/EL565iXXTGePI20Sy
GZG1R/NO1at0KqV1nEdjHdqehPf0ghu7bleAjvPo1opY3BNC+1XQ+QoS0RZXZRG5wtOeikz5tw/K
dxkxcaaP98wZ46xUcJ1ujuB9v7ILggPGwuykq1+AYhuyIWh6eISXPrf3JJ7oE0Si+8TjzeKX5859
BBm76H0hkyZ5B0b5mCjgEZ4gY/feRw8PYBGePLAIT+IPNive7/PyOGEdc3xGh98IccZdN7Te6AjU
gb5+ec7Z3RkAJtN27dlxZM+OffO7y8Pbw0czq2ZovBDJCsryADkn9x06dDm7siWhFj5vDuFb3Gqr
XOKCYioFlqVv9j/aYekiq7bjIicVRy45k1cJxY9OfO400KCqbQUgNbHwjpohdSD0UkElEGUR7l59
OfIb75+xhERJFTnnBWLKZVHcsWAiYQ+xYCIurb9duS4Q7I4lNcXbRHKgkJRMsan6ypf4VF2H20dp
vYGjzIIXPjyQ+Egl8Vo56Lu5tZFl3vllMD3egthtsfhx8DiesT/x9tTA6+Dp6SaKgvfB+BL/5c0W
Q/xDF7TGr9qyjEt48CduwXt+keiiK9jQjfOPI7qD42Ng0aMY3/O/cdWIPzvgGtO8Q0tWcl7BB6II
TwBiyVJjCp5U0y60p9du50wyacd9N4jLMbT6zxOo1sKvJX398ldnYtMBLCd4jXHGWiVmPuyJun0x
7lh6wEgi2oqdpkzodGXjhYhZFzpEv0nyiJJcC7/KrGwbrxpL+Jdn75+6q3nYhd6qZACjCRuH9x+x
/FYXt7MvTdz4vz5ybX3nW1pEHXluLCOYpfcqG2o9b+64+4oqdmKsMIvuHz2ZC6DZ2bwZVkWBdq3a
hhAZfqFNZHVOojVpXYfxpgtnPd40L/IDHfRGuRmRn6+ZFHaOP+5JdV6hBQn6XK/bU8KgndXVlHhN
jlA1f0AfW5X1e6+GTIvM1ry6MwcAu0IoqkZqAOmXth84qHXy0EcABQDi7EMI3JA1dBzYfNPmy3NG
L3rn3Pzri8pBy6aZymMRnpaOu34fpG04EZ6IJPYJ7GEDyY5++wKPuTtNVji/fXSruhBuERG0sz6L
XRHiahw7RZwRYRWsZX19aWO/m0y/6sJINKcL+U6s7Y6P88NYa4qTHhVNYieyWZLybkl1BgItfC6N
U66MYUTWhq29Omwt29hBjtGugqqn+CFpA5/7j9mJpPW9rqZ5cXLIWQRffQ6l9xaEGAxejD8Zoux2
NpMtvQ9kDecDH5yxtAJZOAbq86fk/dn7U9ELcsoyzsYnfwCFfvN9u7X74KCxaRsWU05jIDX3zumj
T50OxOtWBxPhnilXxyUhaiK5QFVP1VW69XDqrV8d+IOiPWSM6aygtMvPAfSHjjSSYb4oq5L5r7Zf
ZYuoIOK2WFeKIGRJlR3ulT/QnnIXBwCi29CaRaPHVfP5gycpWUXF+L6YuPFQREx/zwF6N+OwgEjS
umOWTN7vsW3H3KgBo6w1IBGbohFm53ObtanYNTJuNX1mxN51wYkkle6BA7HdwiI88VuoyNkzouv8
5E/fS6GP0Y6uS+8cscWSkKk9gg9tmDd00AyFxA3OOrUeZFU0cH4n0XYdExB9Omp2/dexy/XbvFyn
ZReP1m8Xa+Kd5P1Zyd3Du+6CfHPTAXPnhCxy0ZUm6YieRxPPlAmbyOoa8E7VbT0VqkO0UnQd3S2C
5j0EaDXM2ViWFfdEeDA9woLEb4tBjPZ0q7OAUH91Tf7ampS2z/V8H+7i+SW6iVXz1fsuuZWNDSrL
X2+23BGHG5BSt1/+4MNytrENHKNijzfBZOz2i2O3c/IBEEZ4kicabFL0POJyPapzAsDMS9hNUQDV
/pFXnvIcQRuIACLwDxNofPr69fFkiq8PXTPv7e3t60BfHOvPzBc+szuUf9yeWjPHhOYqPjmwlfMN
2bZjNiSuZQdZE5r2zx+o6/NVpzWq5/r6dVH3urn+68JTZLMmBMT/Pko+P6uJPyhPQyQgbeCTWsQz
wau9WhBFeKo968gSIoAI/IsEavq8/r/ICtUZEUAEEAFEoP4SQP1Z/T03yDNEABH4HQK1rq/Po/lH
a2ruFpT4GRc7rImX5a83t2fp74jITaTbx5WRVxeQKDGP7crCM56tSMaBt38CsOvSbdlzTIKy4k2M
OZVG6rLuuaDgU2XB8ZG6JNNFd0t4jPFuCOgCAjDyLs91tNBqY6rff9E5TNz/yzEHGknL89xX/D0g
ZsGJ4dokZdfTtSgri/oz3rOCthABRKBxEKgjfX0AUHEKXrU5aIDc6ysRM1Y/FNXK/zZJCq3nBN9Z
vo66xE/wEuoCCi20POfIohNFrb28OlY/fi40cfUBsmq/ac60tzsWn88jVj3BkgrqAn67tnjO+R57
Xz69f9bh9tQFV7FejNyshVbGnjtFTABmwc09rwzUa/cFXtSfVZ+2xrgmdqwmkZWvGvd9ycAUILUn
Jf3gHRiKzM16VPLXQ1F+IwQjPv4kaBsREEagjvT1seKUjK16O9h10sau7FJsdkMofs/61qhzi+7T
ufVRnTY8ZkkTlD5aqEOltVqaXlZyFxNK7RidQf+RNLElidpj1cvcazs3rt547k15tbAqJ2PZPT4J
f5ZOSUXuyaD+qmyZf+4wFOWvT+5/CHpuPKIg/PgYrIkaHuAN08lzPP0FoIm5W9+mZRe2X/mMdWiE
ov4COqslmUdvUt2HtVEgybZxG62RHJ+GdfzyHUZ0fXnwzhdmZd61wx97ubStXeldSfoz5rfUHaOt
jHAxQG2NLiOWYDpfkrVrODyxsgjMVfm5o20xCIgfq0kMY9hLY1WjRckGhuJZ50slOOLjS4A2EQHh
BOpGXx8vLyfS0ULfPuwhyPTw98X0ikWI3/PJ5LP1UfVGzvFsnX6OpY8q16p3V0V4de1J7ruUm3kA
r64++pyddK8Ymtv00OQ8sUeQUboVn4Q/aw5Xcvvwx86TXPUqMJl/jlo/pvhT/CAxE+Tb9dDl0rgC
tr6rdPt5rNevyWr20Xu2Hdy+cpYFlqy9TUtMgUfeyK4VMB4nZog/GS0veFlMNaRhPklRddRKsnNx
nUtF02E9c2Kv5eddPJTXz9WodrszkKA/o7/cMHHuoXS5AZNmB88Yaav86Vl+ORAL4Qu/yKCSUSlO
U0g0VxVhFR0iJEAYq6k0ba4pjaTp6O1po0hVa+68+tyJhd30aCT1bp5x7yvYg8p+E8fbKlFpchaT
tnGr0zHy8dHi6YQAXsHoQkIBfsERJfatIhL1F2/ER1hHtBMRkJRAzfX1WSWpu6/ac3yTn60C/frq
ddh9NGLxezwxr0x+Ma6PKtVj8YagGSsiPHVZ9hRNBpsCPL14J/nyG03rTkovziUnX3oNCh3tWnPa
e/obTFiVNyNZmVfCn6XPCsS1AygvfJXHBGoLFU4XiRfO1ned7t6tKb5Nktfv6zyoG/3Crod0Vaet
ZwPw4CVSTbRo0vDt3cefTAl0Vlm14/tfvt1om7e74o/vKeg7ora7M0n6s/JPqR8ANPrOnBu4dGn0
kYQrh+wo/DHrvhMFnWM1kewwJe1cx3XlDXNH1JYRz1X5wKDNXxAQFaup5G4Co49HV7ncpGUDp97t
4OHaquzlnkUxqSyt8LK0dP0Z+6KHqr464e2z/zUWp517ESIYzSf6TDCiBPhtJWhuP9A6IiCUQF3o
67MLa9q2h72L+/TZXaTgU8KRZ6XCxO+x5ERapmRZWSkSkCgK7B/FyMpd+raCb7e27Hoia+U5xawk
aefu+wBmA0yUeKvHn5H3KHuLN3pAdRKyDFZeeQmdo8qKH8L0XdesWLYqyMmAnbSy8HrogKnnv5kH
JWx25SjvMMpKK4AkI0fB1A3FEvWXVjVsWvQCm/MAo+htnpy+JkuXjiTXfpjNs0XhH/oPaV3rSnUS
zM/kjYf2agqf9jkYaqpYDnJffirzp7QR34RXliJU6p4dpiRgxLilPGHuuOe+VeyFzFWrjqMVMQiI
jNUk1SN67ZIwX3MAaOGxYk3wnHGGAAWv8lhPa8n0XOA31Nlj1uRWAI/+e/KDrzS2YHRVbCf2wJBP
9JloKCpElV/8ME58nqBNREAIgTrQ1+eUVJh8fP+mVYsW3mAAqLZSkeKW9OMSv+ck5/qU1e9jqwLl
19esjE/cvWZ/FvuQjF7P7jTIu3Lvq3G/zlZ2LT7cyCgDg/6dMAFh1iKjS5ixWhfw0OVsbO4kYqGo
mrZuAgUvX38T/lQHAOP9kbEjtjyHFsNctTJOH4299gH7CY6e++QDE1qYG2A3H8UT9Zc3duv+9eDR
Zz+YpU+PHcjt4mTKkQ6XazcxctGiqLGtCNt+ETX49SGeqafo5GQ115irCTbbdp66lHjjzsGIO4lv
T2Rt5hXCZxQwhEnd42FKRquTAYoV1/Jo53eNSi2PADIeNki0C+ioBATYsZoAi9XEyobFappr3hrf
UKCpypKkZKTJAM20mlGAga0xK1lBE4BBL2MwobKiRPDhXWIPhIo+E44oa64ETVw62osICBKodX39
qiIKT4cHngYgq5gM918z1VBGtlJs8XuOPmqY5yzbkZZa8N9n3Kp8a/uOMvsT6Pp2HdR19TvT4Hm+
Sjc7Pa4Gnzgjry7g+S5VLhKtKFoMs1Y4cfNk6rexGkIFf+gf793Hxq/vYxfNiAUA612FPbWk8lPO
Z4HG+IHGnPufAvYFdAGPj7MNjbYf626wgy5rMHTTPttmJE5kDhkdJ5+JmIVafFKf5ZAE/VllaWGp
hr330n7eS8uzNllaLkp78Ci3vAN3xYRI6eNJFDW5w5Rw5yJQta+aqzaT5pmrcmdD66IJVMVqCrRQ
xH7n3D55+e3DRzNDF1SN+YTnZ1wLDIjK0ri+8Q2QOjqaKUIKf9rqgSEmGG1DJMCPDUXX78WGoiTt
s9hQlCJMlV98JWh+N9A2IiCcQC3r6wMIaqKyCidrEYnfE2vnA0cfFcu6heO8ysDzefmcjbV5RRwh
feAyQpiRV8KfUJifY5akajvNXT3h0K7bBXYDVHnrQtGtDguQWxTNycL6rMg+tzcZjEK8zXE9fnF1
VkG9b3TCEy5bym5nUzlC/rjlpvbnX9rzlvV7W2K0bZwCylIXWLc1cZniu3CJX1BMGkATo7ZqlOp2
7dDl7B8V1VL3wufdPFl+Molmr8Lnqhxv0OevCFTHanIa5uzk7jXRWhrexB1L50TTFZVfvtsA8rmw
jbfpBs6bN7sbVItBV2XCB4ZK3y5EzBodcqVAChPgt1B8u2NuVIqetQYrFT6i7K6QEuY565CUhRZr
J64E7WlZvCdgguvksANvtK1aVcdOqLKOr1Tk7BmqaWC3OD1zeR8jzSF7s2v85iqvXbSFCPyjBJp0
XrxurmfLvFwhEUiJsVR+f1/SecayNdONueaLxEn/9l4J9IgrPsQvnRt29Mbj998qQF7fdsLaLcFD
tChfboT0G7nx3jeADtFvLvS7EzjKa3f6z+bdh5u+OHSh2PFY5tmeb4O79FxW4HI5M6Y31r8zebIk
jfgQ2LHbdph66f5G7NFX9sL4fHHu2Nl7s1hz1SWDq55b5SRoSJ/i62nWrFa1qMdalsF7smrmUAPP
Vdfnq07xID3iOsWLjP95AuJ/HyW430jRcl6yz5krOh2rXsq8E14dgqBzXFNmLA+JPwtRSDop/rnq
n6eISkQEEAFEABFoOAQk6M8aTqWQpzUnwB8jreaWUE5EABFABP4oAQl+P/ujfqHCEAFEABFABBAB
SQig/kwSWigtIoAINBAC7tq4Mh+N6/+ea7LLCUT7fq2aL5ZEXwPh0qjdRPcbG/XpRZVDBP5VAs4z
/A2+l3+8sulYRrmave9IIzlp3S4KrzaMmHvoWfMBk2Z3ki/MvHsPF+1jIVJxCg4eUJG4aMX5iBmr
hz4M71z9dBou0XfDVGfcmC5UNAWox1cUOjn1+OT8tmsV+VfWTOpkrIUNUbU728879qyEJSHALE6J
6tNaHdvffdWpDWNbqmPDWJ35j8WTGxVruIoUpX/7/CEDv0FgWGBUWGi4r7UaALQevTQsNHrxRCvF
PAHRvipJKQHVfHbhJWKp+gEjL2mJjQGNRLN0nDNFny+wGaHWPqEqv2h5VQnkT38DXcPNKkl/Vlv6
+iJoEYUIYRRcXTOpY9vWNCNTHVMbe//YZ+I1uiKK+TcOlT6McO69+MR9GVvf2b5jjfIubprSbfKp
j5gYY8nDmC1Jn5o6Rx++ttYsact/r5ndwmNPHfc2FE9QDSlK/xtXUOOrJYFoX5VIlIBqPrv6MmKp
+n27HThh/c1CTDjfKO0sSzifnx+f1r4IVX5h8qr5yf5D/fd+6rFy/8Hdnk0urR435vAHfnVV/lL/
pW0J+rPa0dcXDVcwRAg9Y+2IYadbRial5b9Iy7m7b7pWTpZI/THRBfxDR4tvLd/4DEidNp/bt2Hx
kj2nDkxSh6JTUfte/0gPt+11uAjga7z/iJ72I9e8BaDfmTdyyPTrr0/NddBUxeZqsgbW4+JzGQTj
QYHhaglSlP6HLquGXVWWaF+kzwib1pB152DEBJs5NziiSwKq+eyqSqnwydiTmZiqX+AEh6Hey5PL
AN7cfUsvzb6UVAhStiEbgmZERHmxhfP5YPFq7ZeJUOUXIq/6/sW5/z4BfDzhN2a05+aMSihPSXjx
E5D8KQe0BP2ZOPr6JczixzvH9TSWotJIGua9gk6+LgMgDkFC1AiCYFC4h6tjisavnm2nib2aTlYw
GDJ77kBMBBItvyKQ+yj1B0BLu54a2I+kJKX2Th1kAF5dz67QcVkSbCEFoOK8ZNPBzfP7KwHIdVu0
aedS/UvBW1IqB0ecitsbM9uxtSKZSA6/oCWfCDWhaABSlP7V+UHH/wIBjmhf7Nlbnx6EmgLkY6J9
LEf4VfOFuSdCTZ9EIpMwAXrA/xMwwKu1L8IO8MurSnHLq1K6h1+/efXxLezvdlhHRTEF7wXcaYQ7
JOgZCKbqAvr69Dv+boH7niiPXbJiYc+Sq5u9XDa/ZEdI5QtBIp52EaMw81FJq5764t0Ga4Tnpy6q
RG7apmcvPTkAaof+zqNc7NopASga9nMZYmesrycPeec2hm06cftHq74WKuVZguPBLDm+4aoUGh7W
xWlCNuuAALFoH6sgftV8ruJ5JPoIVf3k9O16qUDFldCZkRuCAncS32/ksojpJDHEUQfkySNj4Oig
ARW3d+y+lZWVdvNAuN/85J/iCt7zWGqkGxL0ZwRT9dsU3qZNIfu/859Bxi5ktd/EhREzTAAen7yT
x4pOwB+CROJG8Nv1Ge3atKNpd5py52cjPRu1Wi1N8/aKAK8uXfuEjR2Y31LjH9MBWvbQFyqRTVYb
HHv1wPrpfY1IT/eGT+vpGZ+LnzvB8SCfowTxkKoUpfmiH/HlRJuIwJ8kIN1igJuVQmbCtnXrNyXm
69v6Hoi0VWZPpjDVfN8lB9KamgxfvnGqIfdtBx610u+tvSI9TWRvzrcZHlNsTGO7r9Q9asd0K5Ws
/StiMlr30QKQUcTmVCIW2TZEdkRkAAAJ5E9FG2qkRyV4Xp8zVRehry8KkkAIEgJZfYH8UirGHeTX
X8suG2gmq9RjXUbG5z0O9okVVT/hCmRAO6oINLWa79vmWOQ9nwHuj92Mv13dfeAzUIf4jzWQBiDW
JK7Mv7pyb0aLTnaj2jR9fvVZSmF+JTYe3LQNGw9qDKTm3jl99KnTgXhdBQVleYCck/sOYeL6vTVS
5woocOKK0rOOPpsWZPQai340ryr6UZWDaAURqGsC8pbh74vCq0shFu3T9rme71OdSHBNQKKPQNWP
/uNnc/eogyHNfj7YM/8CyNg5GitUWeKW3VGsVrInUuU3jUjLj2BldDjOKGKbmJeSP4+1aua5K8lz
V5VlfKUrkWQgb5J/Y0uC/gybqo+81tq+t2lzeBZfpa+fw920dXYYoL4p5mKI38oc7dvr0gE6OHVT
I+N3HPlDkJTcFWwEBZnLW/h5KfWZtcp+/5y+zWWgvLjgp6hgdIIG/uE9chZz4y8rzvPfdGbLmkvQ
xMDOJ3D9IqfmBGL5HEhkZkHy7lUb339jgrxur+DwYXrNVKKORdNnRu4JmLADFFp0sJuGyeHzRl2y
HcHJz/2pJBD9iPsoWkcEGhuBsneXIxZffFMKJOU2Q+Zt3DpM1FetsVW+ntRHgv4Mn6rfO5qw7TJL
X993LTZVp3SaMqHTlY0XImZd6BD9Jskj+lhEybSIfaELmDJaPads3+1jKAMZWGXZIUjS2CFIKExW
IDteDgRB4Uz9jsSS587p1eZ1mbScvKqpY2CkWfWLjrzZ0RYvAQqtt1/MfT/endhWE7s9OZxJbodV
T/NXsZIo9Fl/8fF63uRNicaDSFGaFxLaQgRkjKfE5kxBHP4qAQn6M+KpOvA1bdDBa991r33clWLd
3KI0d1sTszGm+gDRHJmi5xGX61GdBl+j9Zm94+Fsvp1oExFABBABRAAR4CIg+hdLroRoFRFABBAB
RAARqMcEJJif1bgW3L+F1tgIyogIIAKIACKACIgggOZnIuCgQ4gAIoAIIAINhgDqzxrMqUKOIgKI
ACKACIgggPozEXDQIUQAEUAEEIEGQ0CS/uwv6es3GJbIUUQAEUAEEIG/R0CC/uzv6Ov/PTSoZEQA
EUAEEIEGRECC5xu59PUHqLHylSTP6eh8AwDSpplqTlP3vP0kyuTlnmnTVhx4lM+Q17WfErE72F6L
kRHcpeeyj5ZeA8sOH08vb+myLnb9ZGNm8hwBkSRcX59Gz0wgCVFkakBk/7CrQ0fa/+ESG3FxFy5c
aMS1a5RVQ9d/ozytrEqJ/32UoD/D9fUPndrnYLhPuVU3B7fJi/wcsUh3VyaufNl8XMRiR33j1nQ8
3BzZZc3+Yc1uhk1YPW6M0f0LbrhTmL7++n3Rib7+cd4+Xe0T3Rsx/z9dNfHP95/2DJWHCNQ9AXT9
1z3jhlGCBPcbxdLXFwwv8oIthv/b+voNAyjyEhFABBABROCvEJBgfia2vj6le3hStFVTPAoDWUlP
Ed5gVauRvv5fYYIKRQQQAUQAEWh4BCToz8TS1ycKLzIEx1Izff2GRxR5jAggAogAIvA3CEhwv5E4
FB5PpLsCha5Rx6I9LYv3BExwnRx24I22FRZeBF/Y+vq3Ofr6hLWtyNkzVNPAbnF65vI+RppD9maL
F8aa0BbaiQggAogAIvAPESAxmZy4IVy1tre3j4uttUe8yvDnGwtcLmfG9FbkKuXfWR060h79ZP3v
nO6/W1MSifhL/Xe9QqUjAn+AgATzsz/gDSoCEUAEEAFEABGoGQEJfj+rWQEAgPT1a4wOZUQEEAFE
ABEQkwCan4kJCiVDBBABRAARqNcEUH9Wr08Pcg4RQAQQAURATAKoPxMTFEqGCCACiAAiUK8JoP6s
Xp8e5BwigAggAoiAmARQfyYmKJQMEUAEEAFEoF4TQP1ZvT49yDlEABFABBABMQmg/kxMUCgZIoAI
IAKIQL0mQCwlYG+PgmnV5mlD4iC1SRPZEkkA6YOIxIMONmYCxP1ZY64xqhsi0KgJoP6sUZ9eVDlR
BND9RlF00DFEABFABBCBhkIA9WcN5UwhPxEBRAARQAREEUD9mSg66BgigAggAohAQyGA+rOGcqaQ
n4gAIoAIIAKiCKD+TBQddAwRQAQQAUSgoRBA/VlDOVPIT0QAEUAEEAFRBFB/JooOOoYIIAKIACLQ
UAig/qyhnCnkJyKACCACiIAoAqg/E0UHHUMEEAFEABFoKARQf9ZQzhTyExFABBABREAUAYqog+gY
IoAIIAL1ngDSQ1GrEwAAHc9JREFUm633p+h3HRRTAhf1Z78LGuVHBBCBv04gLvbCX/cBOVBHBIaO
FFcfH91vrKNTgMwiAogAIoAI/FECqD/7o7hRYYgAIoAIIAJ1RAD1Z3UEFplFBBABRAAR+KMEUH/2
R3GjwhABRAARQATqiADqz+oILDKLCCACiAAi8EcJoP7sj+JGhSECiAAigAjUEQHUn9URWGQWEUAE
EAFE4I8SQP3ZH8WNCkMEEAFEABGoIwKoP6sjsMgsIoAI/GUCzJLnJ0KHWLWVpdJI1OZq3UbOPvzs
O/N7ors2CdvD+9d9c1Y5n7/lH69t8hrYRUUFT9nCvMuYJcfelgMUn3HWIFFpljveMQCAnhlqSSNR
W7rf+MF/qNoeO0t1odqTkn5UH25Ya/R3ZwOcOzXFAcromHcctzWjDIDxbnMPGolqHvCkTGh1xEkj
NLMYB5A+iBiQUBJEABFocATKs/eOs5yR9AN0HSf6dSBlHNmeuHrytQdFSVucZ/gbfGfS3xzbeiYH
FK3GjOuuTJLRsVSW4q4j40P8VHOPE3kgZzLQc3I7pW/ZTy79dyg+x99NhzuZZOvNbMaOt1AiA5Cp
lnrSPHkrKxgkihSJZ1+93GDkxnp7Rd9gGA3yntlO9uvbjJvpmfkVADJKFmOmz3zbrLcaD8c/Wwcm
WhABRKAREQCARlQbsarSt2/fonwm31/ueR8NAJDtH5NWgR36nLunvyIA0Mbe+Ignfn/MRR4AjCMe
fOTPW5TPzL3opwUA5C7hd0o5litzn71//5lZ9Op0b6zJtlj1CLOcd3NJKwBoOvpsDv8hTkbi/YWP
NpkBgOqgSU6mTYDUce3rx3vm2hs1w3oAiob5sLWXsxhFecXXlg1tJQsgrdPbe1Z7AJBzPpHNKdQw
LOUDs+jFUSsAUPb47w2zKL80VcAIuyAVR283S8y6ksXEve8LMAhlTw8tGtRODZ/WKLZ0jX2Wm3dw
oBJAM7ejX77mM/NuhbUGAJNobkSfLvtrA0Cr4IsvcbAc8uxStP2vv2cKK7E6zduipGAbOQAFq/Bq
ShxTfHv69u0r1nXAZKL7jX92+IBKQwQQgT9CIP/JnU8A0NbNRh2fL5DVrV2w7iP/4YO8il96wCh4
eO0DALSf4GQgC0x6cUFefkH+D5IcufKXeUUkeDjbnMK6z9n3yCe2pYIzp344BIVFucuud/WIuEge
sWb/uV2zTV4cnenkd/r9oyXuC+KyKjuMC5xpnnUglc82WYrEO6MrTV3iLGCkgFVS4cW7KpNXzO/f
9NvD7QvWZJRBafpSp1GhZzKUBgVu3hA131FXmgm0PrMna8PXU+vPfqosexG36zlQbHxG6nPNJWVb
DnHQBsgK62tI0bbsMiJgddJ7IXcYBUpku19ZfG+No0PYDYX+m5IOz+Wr0+9sovuNv0MP5UUEEIH6
TYBE5m3wsdmrJB7jub/9N8rY+QaWTd3zv9drjQHvRZiVLEusT76OhbgMqvXocWbY/UZZw7aKbMcU
h27cGmlPpT+NNJkNAJlb/cZsZee+FX/bNPktgNrITZGzrGQ/NrvafuIDbsv8taO//u9oFr+RUy/K
OmGZVEYvD/a2qmhxJDLh8qenn+l06bOHn2NV2r8lsDs2VWUtJtNmd1o1+1rU0WdG+UeyQNF1Wn8t
7juIpCY9IpLud9+zI/7SlZt3Us7vSjl//tWF5PUdOQaqP/lLBBPWsQ/bZq2EJn23X97lZSBTnfz3
11B/9vsMkQVEABGodwRoZl3V4eHnzPi7hZ5ONDJU5t2Ox6Y36p07q/+62ZNSteipBQ8+pO48le3p
o2e17OjuPbM9d77Fq0lpqqEE8CX/VQEddOTp+VmF2E285koUAOwBERFLy6GBq7202b0D4x2eUtlA
Q646C83t4JHpJvgOJlOqKSQMxG4gg0AfzOrJGHQGExg/8r5XG8DWeI2o6MmewfYq0JpIATCkKNhd
OXZfjO2v5O3hKXqu/sNCRh5ZE+Rf+RbUx83qqcwzJGDSC7/KmQ/12zjUDyrz40ZZuJ3/eP1hfkVH
wZt9wkqEZkrw9duNfacyR8xo34THOm9FJN0SdEFSCyg9IoAIIAL1joB8h4D5PeXh5+nxA10DlwcH
jrPxOP8dFB0WzexcPRf5v70zgYs5f+P4d6bpplFNSpHSSYdclZIrg5SlyJWjrRwr51+Rq3JFlCwR
EkXJusq5FEvWlbRYigjFylFKRccczf/1m2ammWmmnZLt18wzr93X/I7v8Tzv52Wevr/j84i3Wtkq
MMydguoyg4b291oZef7mzadl3NbKVp7OGgj9s2+eV2DIL94LEr8gpOsywUSR26Al3wqGLp5GCJWc
+/V41ouC55mX45fNi8zTHuqqj1DJMf/lUdvXL13FW5zJa5jokhDKT4777ciuNev/5swocpAcpuif
eQVD10nGCH067DVnc3T8gQ0r150swq7EEtSdVvp1RyW3/yxFRjN9B2B3Hfk+9NfRLiZ6w6d7B4au
XBW04Xo1Quq9LTT+/W+EhjG6/pxw2L9HTUawm/ve3NZ8zFO0ow0TwxYQAAJAoD0SkO/hnZgdt8DN
vPzivu2b9l16Uac9LebKyendJPvlldN13/0wJXi6nVbB+UPh23Yl53d2cF+4abqRIiKoD9uatt3L
Qeddyv7de9PLegzyTUhda6fyfZSUrEJSE4JGdn++L2DitNkLd2XQrB0M1KyDEzd69CA8Orw5Mttw
KvY8CPtD0HQNC3HVk8vdF7DqmpYr9kAK+yNyEHGX9JQsgs8krnIxr7wQuXBx0JZL/zBR/VpJ0cpv
ySBsFWm9aIaZcJaWowyeMtb8a/bJA9FbYlJzOlhODE2IHNiBa4FE33JazjsuxM3o8u1KkJunRD0k
a0RgCa41JesFrYAAEMApAQJB5v5RU6nUf6nnSXud6NPX/5KiZ1z23nF6kiU0/MW34vx4k7HX5Men
PEsZ3rz80Rxf6ipeZt+985u/f3zRqAOvjo3XbvNFz4QpVKhP3ZwQQlsgAASkmICCode+DLmYY88L
bhfWeBrx3a+SYqdb6FrNo4hpo46WdbSYdiByTNsns2Z50V7/UmmWk9AYCAABGSdAULWeGoA9r9+O
P2puqR8bPRjS6v6oOMW8YMW0+rD/yYBtvpT8T7yESYAAEAACQEDaCUA+k/YIg39AAAgAAdkgAPlM
NuIMXgIBIAAEpJ0A5DNpjzD4BwSAABCQDQKQz2QjzuAlEJAxApzSJLyiMNojL1Vwa5rwH3wvqnzM
4B0FPI1HVuXjuGkOJuxSL121bSeve1SDanPX9KYQvrfmC+1ZrF9fc10Cud/qHJpQeJjFf6wY00fX
3NJgVPDFj0xEf5u81M2wu0FHXSNjz4gbpTwZydon2wYTyGyDGYW/Og8NfSo8lNDI0rwLzzdKc3TB
NyAg6wRU7L1mOmoQEUHFCntMv4LNg/9gxx7s8jH099f3nMyla1H9p5goyevbkrl/6tPyo/1WJD/r
Mnr2//orl+bdu/+shI5IlME+/lVVNvp8Or3NJ02k2PnEnPY96xvQqG/ljZBll5wO518wff2rm+vq
jId7euqMWJsRNkCf9OHE3JHe20bkbLZRRoj+6nBgeo/BuvVCXI2GkbUDkM9kLeLgLxBofwSoVGoL
jdZ1WxK82pSrkMGRVxQ8aLJ8myeq/mvliZO5RabTNmwcq84/F/3j4yKEtEcsXrF8dH1hFYRQ7dsb
B3dHfXYf414ywW7lI157x0OlF91IjxMWLNiS9LCEqaxPnRcev4aqS6rOXNbP/gCafzV7d3+e3BaJ
Yu1AoeVdJiBhffrqvBO3yF6nzFUI8uYTp2nHpT5hDB/m2oU9j86gEd2+nSvF1o+Md0lrz/QNCSz5
ZT3PBGyj+sX+Od7JVjtSAgZ04uZlgQbSugP5TFojC34BAaki8NIjRZw/RqfdxZ1C+WsG6K7Bzhpv
zLqxmqMLJXiQl+1EDqJsNmGoWvLZIy7GR9SN7F0mzgleMtaMqzdPpFAjEjSL6ZVZu1dGPaBZDeqh
/DVz8YSAw0T3HYmenW5t9ImaOd0kO91LIEWKnEfgIP1zfgV5BAVb/cmRu2lVp3yoRaheT6smL35/
kdMya1XE/Hhx3V6dFZdslPhLrtR9y93lPf+8Q8zZRb07tqLUr4B9eN2BfIbXyIBdQAAIfD8BZdvJ
XgM15JC8noMGNwshkQfFzEXU8ojNuDxo/8GzV9Nu3j0afjftbcrLHZr1rQnKBiPG675O8pn/gKY5
bt+FQAuUG/w7VnctZcl0Tv7NuvyiymuI3bbH9HBEJPFsEDNd04eZny+v9jvUMyxjDIVQdm3tdsKK
E46diNkNnRjvjvjOMvQ9em6hBbceTcNJ6d+CfCb9MQYPgQB+CBC4dcL+I+VYvZ8C1je63ih4sGk4
dTWlNdrUuRtGzt1Af7mnb9/gJ389/MBw5naqK/1z/ej5lyptgjJjPLrJoxr2CdLAzdciHNTYyyNi
x+6qCLHqmAwGIsnJNarHxh2J/1te01it/EUJHXWSZ5a/LVYy0FFEiPU1K3LGvAKf35Ncu8ihmnd3
7ry4fLK/qS+rtqy8mjRiIulSJJIjW9pSnt64Uzjbohfvuib/yNK9LVMXV6U7lOAdEGhPBAjsD/4t
rn282rGnhfs8/7XrlgTFPkGog0lPLe4qi1l0fMbkvc+RnqeHbu65E8duFBGNxrhoI8aduPjbL18+
uZW0ecmqzCqEqu+tsFHWtlmcXd2kx4xPWWlXX1WxlM0mDvxy9MSzb6yapyeTPtiOs1SuzTvo53l5
6LF4H3O2/KSS5arH7wpKC/NL807P6d5725WTCwxIiNCh35Ijh6yOj5tz9KXwTbkmZ5aOk5DPpCOO
4AUQaJcE6rMab9GGQx/k9UZPdFDJu7x/5649aSUGQ/yTtg7hFbhkvL+fjdXvencseNHMufOnbsn+
1sFu28kI774VCYE+HnM2Jr3p6mCkIuY2FqMwYYKOoXNITl7YcBOdnw4XMGoeRy8JvFzMRB2HrI+g
XvcyNLFxuWAXHTakU1XWutArhY92U80N1fQM9LwulYpTciSSndYkR3fZ77Yo9S0dh0B/pEkyV1ri
R8KEsYFA2xPAeb2YplOXuIuQVCq16edB/qVeTNuHBSxoOQGoF9NydtATCACBtiLAy3biEltbGQbz
tgsCcL2xXYQJjAQCskWgvdxdk62o4N5byGe4DxEYCASaSYB3UwqHG81yhWd/s3pBY5klAPlMZkMP
jksnARa+P82CznOlWb2gscwSgPfPZDb04DgQwCkBuHmG08Dg3ixYn+E+RGAgEJANAq2+GqureJAQ
ONzGkEimEHQs+vnse9T0218CmGufJW0N2hR/r5ynZC9wuqkdkdL+TXXA07m60vPeRgSz5XeqELcc
gf2m55hmP+NNrA2ZQrDd+bzxawB1n09P0SdYBt9rkrBw0YBW9xvWZ62OFAYEAkCgGQR+1GqM9jR6
ku3a+wxV6yn+zt2qXlz7Iy3n65zeymJeBhO2uDbv6Nbwm5bdZk5v0NoXbsO/X8esI8oJrA/4VfzZ
r0BzmjduyT9OG2/TC48Hp5Sbrvbtp4IQR75ZApOImiMXjKe4xoVcWnjBXUsAQ0PvRkUDYod3kjAa
DYM0uSVm4ib7wEkgAASAwHcSaPXVmJA9X+9ujLjPQKbr0n9PDlu9dUf8vb+OTtRElY/jZw0xJ2Er
tr4jQ9OLGIhTzKzzqLmzh5PJFHlr37hX5ZnL7MffRAg9WWCpQzAJuFvNEttRe5TvTKeOZIt5wmsT
TMU/YuP6iA1Bs/TzsXppDS2rRIyGmJ+uhjoaUgiUvmOWzTMgU+Q90surs+YaU9gGIFpehBmZojr9
eiUSb4yAFzRMIys3cQ7VSpFMIaibOm5+VHh6khKZYn/wLQOhb7cXa5EpPdbn8AmJ0F+fSXyAuk90
NeSWJBDCiu0y6xdqZG4ZuTHnyhDqYDNxhFpt+oHrn7AFbXXmsl4Eci//+3zrtfqiAZ7mKgRFrGhA
ZuoTvpMipmnBIchnLYAGXYAAEGghgR+dxnhmFWX/VY6Q4U8exor1xwgkRYWqzIAJAYc/OkUmHo33
7nA1aub034o4i5Dav26qekUu6UMoPBMUldt1VtgyY4RQl5nhe4/tmmVKE9+xJvtM+bDQ8OVj9bgq
WBwbMBV/dhVQ+00v2FfoeC07ZYswo/JWoG/07VKDqQE/mz39vZDnCEKIKCewjPkq3hgBLx5UfcsM
9FgSe4/hvGTz/i1+Dp1IWiP8PdVRZuyZV/Sqh79dLkGmflNMOIAQQqyKv9LykHIvJ33+dMZxRN6K
UxmHqEWNSNh/9EDk0j5YM6yqAEJI2cTZCDEfpeWKy1LsogHGDUUDCrCiAa37geuNrcsTRgMCQAC3
BGpeXhQhfj9RCzOYNGRjiO/YL7Rfdzx48qpUxXq4kw6KzNe0dR0/uRup5pEo1fz6jsSBO2NDp3Vu
vDQQUPG/iqUlTsuaR8ELGmnwl1pfzyhDpCGh0UFuKq5lqYN2/sPjSBAQMZbYi5KK/MyL75GCc8SR
UFdNTkqsWTqja+LO+MMP+5T+XoKsl07pwZe66KWvilmIrKchkBg4jtRVPEpIuluBUOOqAtjlVLkO
uhR59OCf91UspKrcOvUEeAQk3BAwW8I+0AwIAAEggHMCuv36ktGz1+dS8pdaWmArEBa9hsZ+tqOR
+P0bzBVl9U4KCMmxC7qwRD8DIrqjqk4X1cbJDCHEp+Jfm4vlM8GWwqOVX8eM5P7PVWdkpzImvQ4h
5teSSj7mwt2RWC8Eb1AqWXnPsd4ZvCdoPesjYeBqt+78OYCooCKPEL2axp2ePSHHEcab2BtJd9nF
S4WrCrCbMWtrGIigoETCMqeIegIiiwbwedQKmyLj0ArjwhBAAAgAgVYkYHTaXdx/ImfpYL82oD8J
5QWPGD15xfqAxd62/bzOq7uIEr8X2Z+ooq6MUOGZI8nJfxTU9RCpmi+y478fVBKlwa9kMHyIBmJm
hC7YGr1qxUHO9UaSpokWQp+uHkg6ujk0+T17bJHdRc6qaDzGtQui/7FsWvDemD1b/heN3bGSN/AI
cJIvu5/9Rd7Rf1QXgYukJE1L0w7oc/7rStEZvX4W5jvhqgLY44+0D38XsZCejSF28VFUPQERRQNE
Wv0dB/lz83cMA12BABAAAj+MQHp6ehNjU6lUEWcVzBccz1Rbvyzq5PG9j5FS5z5jFll0tnc7GUFb
vDUh0CcOqej1dl4gVvxetf88n/7Xd6eHL03vHfHm2qxtknYUYYrwIbYGv7AZHR22xfq/8NudHB47
ynt091un3iGE5PWnr5uTOGt/3Ipto6c6aqM0bIkmsrvwHOx9Vbutp6Joi8MP71yTRtAYuNwVOyqn
7bbYVe3PVPpwv1HaQisa1T6ejiopt848rpyhTRY5JJa5+KoKHEMIOR4qHawrV5J16SXS/tnVjP9Z
ToEh2EUDZngZxtEUDSfsOTKklR9uRAiBvr4AcNgBAkCg3RGgUqnSpa9Pfx3T12btM+fkktNUsVml
hWFilubcvXJi7bSot1NTsw8Pq685yjfW1ztz+oxNtk0sSBzNveXGd1bsJqPggEuPZV9D72YE9+S7
ISe2fXNOgL5+c2hBWyAABICAjBD49ufy8ZNvKvacHr3ZqVEywxZ/A0J2rlC8XfyhBmlKXuG67uu7
6gGLNo1baNbayaxZYYH1WbNwQWMgAARwR0Dq1me4I9y2Bkm+PhO6etq2ZsPsQAAIAAEgAARaSADy
WQvBQTcgAASAABDAFQHIZ7gKBxgDBIAAEAACLSQA+ayF4KAbEAACeCYgKHKvZjMxKO0To6UG01/H
WNULKjYxQm0uJtLYdfa1bw2N+DoKCvaLatzQDSH0A3Xuac9i/fqa6xLI/VbnYG+OYZKMxX+sGNNH
19zSYFTwxY9MhMpOulAIut4Xv7DfrGZ9TpnUlaDuca5CwEbc7UA+w11IwCAgAARajYDGuDXbY4JG
K72+Hr4o6oE4acFWmY5EGezjv9R/jL68yOHYgv1b47MqmnpVmdeTo3Pvy9a55x391416nfu3cSGX
isVPQ6TY+cScPrWqF+9NMa7y/dPsCy535q/OwLIYsZOebm7C3XIWQqzPtxJeGXZWFVCR/Fdb2qAB
5LM2gA5TAgEg8B8R6GjmMMzFuX9XhBC9BluMMD+dmuOoSWFrw3cb6L4j60udSIl9GtaUK3g/LvpR
vdZUzcO13cgUow05tdX3MOX7fhG5tG/X/HoQyE7b8z/cOLg7avfFN/TGHWvvCwn217D9Z3w4EzRK
kyPqz1kqsU/8SJ17RKJYO9gZayjy0pNo5Xvl3pPt8o/eLWPVFd/47f1Q95689Pcfxa7500A+az4z
6AEEgEB7IVC4dUwfA+rGB0jBKcC/vzJCBFJn2+nhB5LTTu1b1fNNasjiPfncRCIkTs8RvO8+ZZm3
ac7FegEqJaNhdqro1Y2/P/yTdasYoVcZDz8VXLtfgboMctLhqi2J6ChvJCTYX7+Gq77z2/sBsz26
MzBR/wdVPKg/VOeeNwtvQ4zyvaql5+DCYzdKiq8kF4/0MMF/OkOQz3gxhQ0gAASkjkBnr+0Jp/cs
GaJC+zNqJ3YdjcVilt3ZudzHZcLcsMxahN7ce8vNZ2yJfW9vDzOESl6VVBRcyyhDck4h0UGLtoR7
69ejUbUYa4nQ0yt3M/94o+PYv+OLi5mZV18jlX7Optzfe9qbxh2J6mzBfoTYgv2jrTTqZROJA6Ni
NmxY42PBnrGhfIpYnXu/xb/MXehlr8Y2hq1z72ZPSz/0gKY5bt+FQAvMhHqd+0q2zj1i69x/frwL
y+TN/yj3mjbo7aHU0wmfR0xuD+kM8lnzYww9gAAQaDcE1Ho6Ud29Fv7PVg59vHz8WQ3tedzsjRdz
dPzP3sw466uLUB29jismL0pin6ioKEdABBKmO499iOq2I4xQ5e29h/5WdPCeZ1197WB8NkLWoy06
CjIR7ih4lrOnqqOtQiDIK2ArO35Rf/E69zu2bNoeNM6Q079B5/5yjEc3jomNde6ZPBdFWoHkNY3V
yl+UYEXamOVvi5UMdOpLohGUrDwHPQveXDTqJ9OGImmix8DFUVif4SIMYAQQAAI/hEBp5unEPduD
195kIqRppCHHYtYyECJ10NBgvbyQXtTEnIpswXv6nzsiU9PidyS+5DRV6D54IAUVX7//xWzkAAdn
vaKbubXIcFR/Td5vqYI+ppTfqKOAYH8VN4eKNuCH6tw3nlK88r1SL7+twcHbZhi1qYxVY4vFHOHF
QMx5OAwEgAAQaL8ESs9tXu6/LumJmsWksN3zjRUUzX23elso3lo1aFJshRmlKcfYgvcDVbI2ei9N
luujy22qbErth/26Gzj37qxvPwAbQsPeuTvfD77ojmzB/o6V6eFLp4Ve/yz+6UP2PGyde5Rz5jF/
yTOuBdxvfp37mXPnT92S/Q0hZr3OPbUJnXtGYcIEHUPnkJy8sOEmOj8dLmCwle+vexma2LhcsIsO
41O+V+g27he/0bqcpR93Zrx+g34jXiMDdgEBICAZAanUb8Shzr1k0Wj9VpLrN3KfyGl9G2BEIAAE
gAAQaCGBdq1z30Kfv7sb5LPvRggDAAEgAARanQBJzyVwl0szhyV2clwY5tjMTtLTHO6fSU8swRMg
AASAgCwTgHwmy9EH34EAEAAC0kMA8pn0xBI8AQJAAAjIMgHIZ7IcffAdCAABICA9BCCfSU8swRMg
AASAgCwTgHwmy9EH34EAEAAC0kMA8pn0xBI8AQJAAAjIMgHIZ7IcffAdCAABICA9BEDvSnpiCZ4A
AdkkQKVSZdNxGfE6PT1dQk8hn0kICpoBASAABIAArgnA9UZchweMAwJAAAgAAQkJQD6TEBQ0AwJA
AAgAAVwTgHyG6/CAcUAACAABICAhAchnEoKCZkAACAABIIBrApDPcB0eMA4IAAEgAAQkJAD5TEJQ
0AwIAAEgAARwTQDyGa7DA8YBASAABICAhAQgn0kICpoBASAABIAArglAPsN1eMA4IAAEgAAQkJAA
5DMJQUEzIAAEgAAQwDUByGe4Dg8YBwSAABAAAhISgHwmIShoBgSAABAAArgmAPkM1+EB44AAEAAC
QEBCApDPJAQFzYAAEAACQADXBCCf4To8YBwQAAJAAAhISADymYSgoBkQAAJAAAjgmgDkM1yHB4wD
AkAACAABCQn8HwL7gNUOkpinAAAAAElFTkSuQmCC
--000000000000b87b8f059763ed9e--


--===============8825994883528962817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8825994883528962817==--

