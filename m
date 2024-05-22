Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 273FC8CB87A
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 03:34:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BBBF38542A
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2024 21:34:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716341652; bh=Ozs5dhCV1SuW0o/Zuy/yOGFjbPhbGEY8TiOnFvX/k18=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JBF608blT84wEj5e3gyCgwjry6m/3zqvvIRwShAv4V53d3eRbtd3+V1oZMdJRHGdQ
	 kjr3jqBrxjEYUmyt25pC6Im7DE9+5Gf2fxZxIGQNW1MZmJhRWWzBbnxwvDDM2lPTAI
	 TroLRO+wNB+UHHeUTsyttAP4ZZ+nlikvUl3lTmFWcnDS2dDhx8rAUuz8z2Ar6lGR4C
	 xWbbS655pEjfsB8B2lBI97mQwUqR2yFzY7YRHVT0WlTNMhYE/RPkB/avnZEtvwt+Bg
	 uF0uB+2y0P/u425Vp38N/M3v9T1nWc85Kk5qhCy+LMvk16NnK+Vzx+9N01aBgIk+8L
	 EZ6TzO/CcpHjQ==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BED23851F5
	for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 21:34:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O/NyIt2+";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6a05f376effso4659926d6.0
        for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 18:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716341648; x=1716946448; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gO36CaMNA0/VbulwDjyMzLkqiyaqwtPJ37xAe5O9WIw=;
        b=O/NyIt2+fso9enRXZYPEP2QrLufUMmijrMdTDJDju0Yd2yWBWr0uUWeq9dJkyYFOwG
         GGgSMx957SvR8t8XXwwA1YJvXQ7V64dbE2X0+UK/nZtzZufjBjcCUkYLTcCE8KAAd5mY
         CuHihWED5gvHfZoNO5QAp1PbS7TyJafKUhpLX6ggtd2E3Se6sPTNhK2si7w8PpGlZYox
         wweUmKZWtecdQVjrYD8Ro4h8D6mhUC7cTqx68thdwpdoHjb0H9LzjMRUgZTLK011djcv
         CLkD/ljwIsraGYksJmyWOyG+hhOA+yFI6pQn6p5MOGW6gBUNTBYN5jSNdJgnGaz01njf
         BCuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716341648; x=1716946448;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gO36CaMNA0/VbulwDjyMzLkqiyaqwtPJ37xAe5O9WIw=;
        b=UUx471jel1MQXsf9BjoALlxrrm6vhw1lwKK9NXLIUkLVu7Sxm6Am7sep4Q794YUvj4
         zJNt4jt/+dXTZDNBeUp9Vq+TaDM//iLnYfQjoXOBLJDekM17s21F/iuQiySbcpVOInK1
         MlkRcw4PF706Ltzlm7V5NCgrQTMrsvjdbhUnBECaRWkR1ErFNLpGWLexHwOeqU3WUcEg
         lev62RXCZhf5LQJlABQU42Nc4teNfjtXy4hVlDhelpsgMw8ZL5rlyWK9hwfwQ+1m7K6Q
         9nWBQu3C3U+omTW9dz0y8V8WdJ1g8XojHDoLTrv7K4DzEfEG5qOXxA1JqqU6bEXG9wu9
         K9GA==
X-Gm-Message-State: AOJu0YyN21zZ2B/3UoTW42asKrwOWXA7dd1qIQE8n7Dq9SWqlX9DJC77
	16NtxH3WjOi5USKV79ZXqQtIfFZODiISPSVLim4A8w5jNosRTLiV3/QzMg==
X-Google-Smtp-Source: AGHT+IHjwUPmQcfxx5/EpIopZhSFA1l9MeIYSYjIS/art3Z9bPaO/p6kScGAWWJgRv7ZhlC++GQk/w==
X-Received: by 2002:a05:6214:5343:b0:6aa:5a46:5dd3 with SMTP id 6a1803df08f44-6ab80918fd5mr4678696d6.58.1716341647368;
        Tue, 21 May 2024 18:34:07 -0700 (PDT)
Received: from [192.168.2.170] ([174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6ab84cd6d93sm9956d6.127.2024.05.21.18.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 May 2024 18:33:46 -0700 (PDT)
Message-ID: <ef55f6e4-5124-4c19-80e2-8d7592c1cbd9@gmail.com>
Date: Tue, 21 May 2024 21:33:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Hamid Niknami <hniknami@logitech.com>
References: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
 <2862204e-0827-47dd-b0b9-242fcef9cbcf@gmail.com>
 <CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmail.com>
Message-ID-Hash: O6QU47LCQCIXZC6B5F3SR3Q4J6C4VJKB
X-Message-ID-Hash: O6QU47LCQCIXZC6B5F3SR3Q4J6C4VJKB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recording and playing back RF Activity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6QU47LCQCIXZC6B5F3SR3Q4J6C4VJKB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0642685184623030407=="

This is a multi-part message in MIME format.
--===============0642685184623030407==
Content-Type: multipart/alternative;
 boundary="------------KdLK6MHvgBQUzTorhDQ41qzK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------KdLK6MHvgBQUzTorhDQ41qzK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 21/05/2024 21:05, Hamid Niknami wrote:
> Thank you for your reply. REgarding the write speed, I assume that=20
> fast SD;s should be able to easily=C2=A0do that:
>
> The NVMe Gen4 x4 interface delivers extreme performance of up to=20
> 7,500MB/s seq. read and 6,850MB/s=C2=A0seq. write speeds.
Well, of course, fast disk-drives are necessarily connected to a=20
computer, with the attendant operating-system and
 =C2=A0 CPU bottlenecks.=C2=A0 It's not like the SDR just directly talks =
to you=20
disk drives with no intervening "system stuff".
>
> By synchronization, I mean that all three SDRs start sampling at the=20
> same time (with less than 1us difference).
That should be doable.

>
> The questions that I have are as below:
> Q1) Considering the fact that I will have a minimum of three SDRs, can=20
> one instance of the GNU Radio running on my PC handle three or more SDR=
s?
Keeping in mind *performance* considerations, that shouldn't be an=20
issue.=C2=A0=C2=A0 Gnu Radio places each block in its own thread,
 =C2=A0 and for quirky reasons each of your B2xx blocks will need to be s=
eparate.


> Q2) Is there any ready to use GNU Radio Flow graph for such a scheme=20
> to work?
There may be.=C2=A0 You could check cgran.org, or ask on the discuss-gnur=
adio=20
mailing list.=C2=A0 But, really, the set
 =C2=A0 "useful and interesting things one might do at the intersection o=
f=20
radio, DSP, and computers" is large-to-infinite.
 =C2=A0 So expecting something "out there" that does exactly the thing yo=
u=20
want to do is, I would say, naive.


> Q3) Can you suggest any other low cost approach for recording and=20
> playing back 100MHz bandwidth at 2.4GHz?
>
Not immediately.=C2=A0 But I've been an SDR guy since 2004, and a USRP gu=
y=20
since shortly after that.=C2=A0 So, that's kind of
 =C2=A0 where my head-space is at.


> Thanks
>
>
> On Tue, May 21, 2024 at 5:47=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 21/05/2024 20:24, Hamid Niknami via USRP-users wrote:
>>
>>     Hi,
>>
>>     I am very new to SDR. I need a low cost solution to record all
>>     the interferences in the 100MHz band of the 2.4GHz ISM band
>>     (created by multiple WiFi and Bluetooth devices) and then play it
>>     back to emulate the interference. I do not need to decode those
>>     signals. I am thinking of using B200 for down converting to base
>>     band, recording on a SSD and then playing back the recorded
>>     signal using the B200 for upconverting to 2.4GHz. Considering the
>>     fact that B200 cannot cover the whole 100MHz BW, I am thinking of
>>     using three B200 with synchronized triggers, each set to a
>>     different band.
>>
>>     A few questions:
>>
>>     - Will such a scheme work?
>>
>>     - If yes, is there any GNU Radio Flow graph readily available for =
it?
>>
>>     - If yes, what issues/headaches shall I expect to be ready to
>>     deal with?
>>
>>     - Can multiple B200 be programmed to work in sync? If yes, what
>>     is the recommended source for generating the synchronization
>>     pulse? (another B200?) Any schematic for the needed HW
>>     connections for synchronization?
>>
>>     -=C2=A0If the above approach is not going to work, what other low =
cost
>>     solution do you suggest?
>>
>>     Thanks.
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     Depends on what you mean by "synchronization".=C2=A0=C2=A0 If you m=
ean "OK,
>     B200s, please all start recording now", that is easily
>     =C2=A0 accomplished using timed commands, and an initial setup that
>     sets their timestamp clocks to the same value using
>     =C2=A0 a 1PPS input.
>
>     IF you need all B200 devices to be mutual *phase coherent* with
>     one another, that's considerably more challenging.
>
>     Recording 100MHz of bandwidth on a single (cheap, it sounds like)
>     PC is also going to be challenging.=C2=A0 Even if you only record
>     =C2=A0 8-bit samples, that's 200Mbyte/second.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------KdLK6MHvgBQUzTorhDQ41qzK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/05/2024 21:05, Hamid Niknami
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div>Thank you for your reply. REgarding the write speed, I
          assume that fast SD;s should be able to easily=C2=A0do that:<br=
>
        </div>
        <div><br>
        </div>
        <div><span
style=3D"color:rgb(32,33,36);font-family:&quot;Google Sans&quot;,Roboto,a=
rial,sans-serif;font-size:20px">The
            NVMe Gen4 x4 interface delivers extreme performance of up to
            7,500MB/s seq. read and=C2=A0</span><span
style=3D"background-image:linear-gradient(90deg,rgb(211,227,253) 50%,rgba=
(0,0,0,0) 50%);background-position:0% 0px;background-size:200% 100%;backg=
round-repeat:no-repeat;background-origin:initial;background-clip:initial;=
color:rgb(4,12,40);font-family:&quot;Google Sans&quot;,Roboto,arial,sans-=
serif;font-size:20px">6,850MB/s</span><span
style=3D"color:rgb(32,33,36);font-family:&quot;Google Sans&quot;,Roboto,a=
rial,sans-serif;font-size:20px">=C2=A0seq.
            write speeds.</span><br>
        </div>
      </div>
    </blockquote>
    Well, of course, fast disk-drives are necessarily connected to a
    computer, with the attendant operating-system and<br>
    =C2=A0 CPU bottlenecks.=C2=A0 It's not like the SDR just directly tal=
ks to you
    disk drives with no intervening "system stuff".<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>By synchronization, I mean that all three SDRs start
          sampling at the same time (with less than 1us difference).</div=
>
      </div>
    </blockquote>
    That should be doable.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>The questions that I have are as below:</div>
        <div>Q1) Considering the fact that I will have a minimum of
          three SDRs, can one instance of the GNU Radio running on my PC
          handle three or more SDRs?</div>
      </div>
    </blockquote>
    Keeping in mind *performance* considerations, that shouldn't be an
    issue.=C2=A0=C2=A0 Gnu Radio places each block in its own thread,<br>
    =C2=A0 and for quirky reasons each of your B2xx blocks will need to b=
e
    separate.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>Q2) Is there any ready to use GNU Radio Flow graph for such
          a scheme to work?</div>
      </div>
    </blockquote>
    There may be.=C2=A0 You could check cgran.org, or ask on the
    discuss-gnuradio mailing list.=C2=A0 But, really, the set<br>
    =C2=A0 "useful and interesting things one might do at the intersectio=
n of
    radio, DSP, and computers" is large-to-infinite.<br>
    =C2=A0 So expecting something "out there" that does exactly the thing=
 you
    want to do is, I would say, naive.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>Q3) Can you suggest any other low cost approach for
          recording and playing back 100MHz bandwidth at 2.4GHz?</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    Not immediately.=C2=A0 But I've been an SDR guy since 2004, and a USR=
P
    guy since shortly after that.=C2=A0 So, that's kind of<br>
    =C2=A0 where my head-space is at.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div>Thanks</div>
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 21, 2024 at
          5:47=E2=80=AFPM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div>On 21/05/2024 20:24, Hamid Niknami via USRP-users
              wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <p
style=3D"box-sizing:border-box;margin-top:0px;color:rgb(53,60,65);font-fa=
mily:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,H=
elvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Em=
oji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Hi,</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">I
                  am very new to SDR. I need a low cost solution to
                  record all the interferences in the 100MHz band of the
                  2.4GHz ISM band (created by multiple WiFi and
                  Bluetooth devices) and then play it back to emulate
                  the interference. I do not need to decode those
                  signals. I am thinking of using B200 for down
                  converting to base band, recording on a SSD and then
                  playing back the recorded signal using the B200 for
                  upconverting to 2.4GHz. Considering the fact that B200
                  cannot cover the whole 100MHz BW, I am thinking of
                  using three B200 with synchronized triggers, each set
                  to a different band.</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">A
                  few questions:</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
                  Will such a scheme work?</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
                  If yes, is there any GNU Radio Flow graph readily
                  available for it?</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
                  If yes, what issues/headaches shall I expect to be
                  ready to deal with?</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-
                  Can multiple B200 be programmed to work in sync? If
                  yes, what is the recommended source for generating the
                  synchronization pulse? (another B200?) Any schematic
                  for the needed HW connections for synchronization?</p>
                <p
style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:Inter,-app=
le-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica,Arial,=
sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,&quot=
;Segoe UI Symbol&quot;;font-size:14px">-=C2=A0If
                  the above approach is not going to work, what other
                  low cost solution do you suggest?=C2=A0</p>
                <p
style=3D"box-sizing:border-box;margin-bottom:0px;color:rgb(53,60,65);font=
-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Robot=
o,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI=
 Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Thanks.</p>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com<=
/a>
To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
            </blockquote>
            Depends on what you mean by "synchronization".=C2=A0=C2=A0 If=
 you mean
            "OK, B200s, please all start recording now", that is easily<b=
r>
            =C2=A0 accomplished using timed commands, and an initial setu=
p
            that sets their timestamp clocks to the same value using<br>
            =C2=A0 a 1PPS input.<br>
            <br>
            IF you need all B200 devices to be mutual *phase coherent*
            with one another, that's considerably more challenging.<br>
            <br>
            Recording 100MHz of bandwidth on a single (cheap, it sounds
            like) PC is also going to be challenging.=C2=A0 Even if you o=
nly
            record<br>
            =C2=A0 8-bit samples, that's 200Mbyte/second.<br>
            <br>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------KdLK6MHvgBQUzTorhDQ41qzK--

--===============0642685184623030407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0642685184623030407==--
