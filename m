Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B7AC05FE
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 09:44:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9837A3853B5
	for <lists+usrp-users@lfdr.de>; Thu, 22 May 2025 03:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747899849; bh=mVaEhK+FSbIbxyAcAmCYaEz04e2WoD2T+M/2ZJk2Xb4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RL3pOOQbV6iTxnyYK4GCtviFdQN7kNv6KqwKvGfEPgX8aaZ8yUC3Upz/B9epSzbpa
	 gHfy0EIE23N4LVs/nViP04/M5ATxNokYPg1PE3spQzeq41c9khgaDT6FoxWobb+7qh
	 iqFH9JSH7JUwmodbWGN0RqjrvJPUjMspnhWmsLV+TnYi1bIPCDLS5szYiub032FA4R
	 it7RMFbpmPGHnXNkS15ecgK/RDfKx6teaMkXyfUgBILHPncV/0lvbKpCV7vf8iL/6I
	 o9kgO76gK4YlnEC/dlM+5wlff5i+w11GJA1kF3OUdLIzTafnvNxO3xqahEL9fRPItj
	 LPYClT68UjOGQ==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id B3937380CE8
	for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 03:43:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xVmwny2t";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-601ad859ec0so9602202a12.0
        for <usrp-users@lists.ettus.com>; Thu, 22 May 2025 00:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747899831; x=1748504631; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VE6cuWzqjmL/11JfVHxa022H8UkCCCPWhcI70E5a020=;
        b=xVmwny2t7+VXnywfrVJhm6AIUviFYfhPa86N0KTwffOjryMUHH+q7XWVPpfjeSHnbY
         7b90FDumEYkLtm3OEB7KZWFFr9veBBTtILjU+bzNkaGUFvxDx4TSZD79DSh7s+P/QELx
         CrSG+OX7rfGSwaIMnEdi6TB+n3Fmg47B4Xe8vAj1gwGgpfvbyVB3drQ3EVGWTEHaWHAs
         Q91Y6iBNQ6yBreu8KZOMf9ET/w0XFPHjGc8Fst+EH0G4nXnLQcWfzTO/lEIXWZbVMAnv
         zd9W2wHKnbsOTtauRqVWpt9KW/WfkNw26I6UGX4n5Zbt3ASZiE9O1rx2BApgDoYLqQ7s
         D0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747899831; x=1748504631;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VE6cuWzqjmL/11JfVHxa022H8UkCCCPWhcI70E5a020=;
        b=V4i/OT65RO3uGtVXu8X+uIeipDJ8pry4MkDwhBdeBy0hzBUKGiTJTRyNGM77dlr4qY
         RLFByOh/jvMSyeYBGnQkr9RL9JUp5l1CHMLTnPBO+ZDscE9FndD98XGwrMaq9KYAbNLt
         deT8hV2IzdutmeQXyMsY0dj16PH/W1q8yPbD+OoK62Q7U5snGUqjN8Mi64lDdYY3Ul5x
         xTf+iQrsaSwSkKnsN+salsk+B2VeAAza0H2Goc4V4H+8yyVUr0bB7G2d1p7e/PFM+knN
         jkN8ILZJ2hI9fEkzBOTTrYR4FwautwJB+zJR8i88QBF3aN5H7nxRmY4igHwCjEoIfDjv
         XoEQ==
X-Gm-Message-State: AOJu0YziqAxIr/QYhNI/iHRVHDs8++5twFkOOIDEAJ7AwhiZsXK4oS7e
	qE1Eo34SmNm5wTaIm4b58dT8T3kHZj1nQEatVhVwSkaTH2wboTLc9kGnLS/33u1VuwqcQcbwvxM
	iO/IRhBhMUxEcG4XG0PwpsosQdYDIFPd35bO/oR5HXOmmIH6d/CccpHQ=
X-Gm-Gg: ASbGncuUrzafEWaXdNh+2b+Q5BURQsomEQKFbKLAgLaHWh3nLWzDVeRTW8jnagFz9y7
	HogXwbe2qb/3ItcqlZ6RdYIb2vrDdmD/Sa7KVw4JWCbaH7qTpvTqlvqBQXbv5l5FUHBdykHQudz
	PMSQA+xINXztTv7QFne4Q5uPlQtsbw3CCwz2s8GxRCxorbGpq81ZKfjOk7G3lyf5o5
X-Google-Smtp-Source: AGHT+IHGNCHFd5jHimgx9nIo90uGbD0OcdnhCsdROzsPWuWOPa7a9yONK0doKqo3F2l6PliJS7/AJK0oeF0G116Pxe8=
X-Received: by 2002:a17:907:2684:b0:ad2:2a5d:b1ab with SMTP id
 a640c23a62f3a-ad52d660d35mr1993165266b.59.1747899830759; Thu, 22 May 2025
 00:43:50 -0700 (PDT)
MIME-Version: 1.0
References: <pWHBwjrZjDYkwBoTvUU0t8j8Fs9Tgy5BcdTMQaUXXFg@lists.ettus.com> <CAB__hTQ0xryfRQVHpSh+zAc5gEwwOR66ZguxigPmjqZEX1-GoQ@mail.gmail.com>
In-Reply-To: <CAB__hTQ0xryfRQVHpSh+zAc5gEwwOR66ZguxigPmjqZEX1-GoQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 22 May 2025 09:43:39 +0200
X-Gm-Features: AX0GCFu-WUxOiRHNGA25RdAf5o8b2MzhNhr3PcN64lMfRPQkiUuiNIiQLHFMMWc
Message-ID: <CAFOi1A6o2+=JjRr3rV0Wv0ySMovGGwoZQ7Z+=yd+Y6M44K1omg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: U5BL2KQTSOMDNAJDBVAFW35NRQNACWWM
X-Message-ID-Hash: U5BL2KQTSOMDNAJDBVAFW35NRQNACWWM
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U5BL2KQTSOMDNAJDBVAFW35NRQNACWWM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2507826260315326629=="

--===============2507826260315326629==
Content-Type: multipart/alternative; boundary="00000000000084014a0635b4a45c"

--00000000000084014a0635b4a45c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Agree with Rob here. The purpose of the tune request to the graph is to
avoid both steps 2  and 4 and replace it with something more familiar to
people coming from the multi_usrp world.

Maybe a general comment on the RFNoC API is useful here: With RFNoC, you
get a much more fine-grained control over all components in your system
(and most importantly, you can choose those components yourself). However,
the flip side is that you lose some of the convenience functions that you
can offer if you're using the multi_usrp API.

At the risk of sounding defensive, in your case, you have 5 components with
configurable frequencies that you need to set: One radio (controlling the
LO frequency), and 4 DUCs (with digital frequency shifters). That
translates into exactly 5 API calls to set each frequency. Because you have
a special type of application (four DUC outputs summed into one RF input),
it is not something that the RFNoC API can auto-magically set up for you.
Or to put it differently, if you want an API call that auto-sets all 5
frequencies at the same time, then you need to provide that logic yourself,
the same way that UHD provides logic to convert a tune request into a
digital (DUC/DDC) tune, and an analog tune (LO). But the RFNoC API provides
exactly the APIs to set your 5 different frequencies to 5 different
components in 5 API calls -- that seems reasonable to me.

--M



On Wed, May 21, 2025 at 10:08=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I think that some of the convenience mechanisms that you might see in the
> examples (such as passing a tune request through the streamer) are likely
> only helpful in a "typical" graph. In your graph with 4 DUC ports connect=
ed
> to 1 Radio port with AddSub blocks to add the 4 DUC ports together, it is
> not a 1-to-1 relationship between DUC and Radio.
>
> It seems to me that your step 3 below is not needed or helpful.  It seems
> you could set the LO frequency via the Radio block.  But, this will be
> quantized and not necessarily at the exact frequency you request. Thus, i=
f
> it is important to get the right frequency, you will need to use the retu=
rn
> value from the radio->set_tx_frequency function to determine your
> quantization error.  Then, you can call duc->set_freq for your DUC ports
> with a frequency argument that includes both your desired values of -10,
> -5, 5, 10 MHz as well as the quantization error you determined setting th=
e
> LO.
> Rob
>
> On Wed, May 21, 2025 at 10:45=E2=80=AFAM <carmixdev@gmail.com> wrote:
>
>> Yes Martin, for example I=E2=80=99m working on a X310+UBX160 with a mult=
ichannel
>> DUC that has 4 inputs each one with a different frequency offset and the=
n i
>> sum the outputs with the addsub rfnoc block(I generated the FPGA firmwar=
e
>> accordingly).
>>
>> Actually I managed to have it work correctly but I had to discover by
>> myself some oddities, the correct steps in my configuration are in order=
:
>>
>> 1-configure the graph according to my needs (radio_control, duc, streame=
r)
>>
>> 2-set the RF output frequency on the radio control
>>
>> 3-make the tune request through the streamer
>>
>> 4-set the desired frequency offset on the DUC (for example: -10e6, -5e6,
>> 5e6, 10e6)
>>
>> The last step is the more critical, in order to get the exact offset I
>> had first to get the starting frequency offset of the DUC (which is not
>> zero after the tune request, but just on the first channel of the DUC!!!=
)
>> and then to sum up that residual frequency offset (which actually counts
>> few kHz) to the desired frequency offset.
>>
>> If I miss this step it won=E2=80=99t have the exact offset needed.
>>
>> It seems to me a bit clumsy, is there a cleaner way to do it?
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000084014a0635b4a45c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Agree with Rob here. The purpose of the tune request =
to the graph is to avoid both steps 2=C2=A0 and 4 and replace it with somet=
hing more familiar to people coming from the multi_usrp world.</div><div><b=
r></div><div>Maybe a general comment on the RFNoC API is useful here: With =
RFNoC, you get a much more fine-grained control over all components in your=
 system (and most importantly, you can choose those components yourself). H=
owever, the flip side is that you lose some of the convenience functions th=
at you can offer if you&#39;re using the multi_usrp API.</div><div><br></di=
v><div>At the risk of sounding defensive, in your case, you have 5 componen=
ts with configurable frequencies that you need to set: One radio (controlli=
ng the LO frequency), and 4 DUCs (with digital frequency shifters). That tr=
anslates into exactly 5 API calls to set each frequency. Because you have a=
 special type of application (four DUC outputs summed into one RF input), i=
t is not something that the RFNoC API can auto-magically set up for you. Or=
 to put it differently, if you want an API call that auto-sets all 5 freque=
ncies at the same time, then you need to provide that logic yourself, the s=
ame way that UHD provides logic to convert a tune request into a digital (D=
UC/DDC) tune, and an analog tune (LO). But the RFNoC API provides exactly t=
he APIs to set your 5 different frequencies to 5 different components in 5 =
API calls -- that seems reasonable to me.</div><div><br></div><div>--M</div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote gmail_qu=
ote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 21, 2025 a=
t 10:08=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D=
"ltr">I think that some of the convenience mechanisms that you might see in=
 the examples (such as passing a tune request through the streamer) are lik=
ely only helpful in a &quot;typical&quot; graph. In your graph with 4 DUC p=
orts connected to 1 Radio port with AddSub blocks to add the 4 DUC ports to=
gether, it is not a 1-to-1 relationship between DUC and Radio.=C2=A0=C2=A0<=
/div><div dir=3D"ltr"><br></div><div dir=3D"ltr">It seems to me that your s=
tep 3 below is not needed or helpful.=C2=A0 It seems you could set the LO f=
requency via the Radio block.=C2=A0 But, this will be quantized and not nec=
essarily at the exact frequency you request. Thus, if it is important to ge=
t the right frequency, you will need to use the return value from the radio=
-&gt;set_tx_frequency function to determine your quantization error.=C2=A0 =
Then, you can call duc-&gt;set_freq for your DUC ports with a frequency arg=
ument that includes both your desired values of -10, -5, 5, 10 MHz as well =
as the quantization error you determined setting the LO.<div>Rob=C2=A0</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, May 21, 2025 at 10:45=E2=80=AFAM &lt;<a href=3D"mailto:carmixdev@g=
mail.com" target=3D"_blank">carmixdev@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>Yes Martin, for example I=
=E2=80=99m working on a X310+UBX160 with a multichannel DUC that has 4 inpu=
ts each one with a different frequency offset and then i sum the outputs wi=
th the addsub rfnoc block(I generated the FPGA firmware accordingly).</p><p=
>Actually I managed to have it work correctly but I had to discover by myse=
lf some oddities, the correct steps in my configuration are in order:</p><p=
>1-configure the graph according to my needs (radio_control, duc, streamer)=
</p><p>2-set the RF output frequency on the radio control</p><p>3-make the =
tune request through the streamer</p><p>4-set the desired frequency offset =
on the DUC (for example: -10e6, -5e6, 5e6, 10e6)</p><p>The last step is the=
 more critical, in order to get the exact offset I had first to get the sta=
rting frequency offset of the DUC (which is not zero after the tune request=
, but just on the first channel of the DUC!!!) and then to sum up that resi=
dual frequency offset (which actually counts few kHz) to the desired freque=
ncy offset.</p><p>If I miss this step it won=E2=80=99t have the exact offse=
t needed.</p><p>It seems to me a bit clumsy, is there a cleaner way to do i=
t?</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000084014a0635b4a45c--

--===============2507826260315326629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2507826260315326629==--
