Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1733F1DFC21
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2020 02:37:32 +0200 (CEST)
Received: from [::1] (port=47312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jcedt-0004qN-2d; Sat, 23 May 2020 20:37:29 -0400
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74]:52202)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <mpk2138@columbia.edu>)
 id 1jcedo-0004mc-M7
 for usrp-users@lists.ettus.com; Sat, 23 May 2020 20:37:24 -0400
Received: from pps.filterd (m0167071.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04O0CEOS002697
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 20:36:43 -0400
Received: from sendprodmail10.cc.columbia.edu (sendprodmail10.cc.columbia.edu
 [128.59.72.18])
 by mx0a-00364e01.pphosted.com with ESMTP id 3170snsu2d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 20:36:43 -0400
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by sendprodmail10.cc.columbia.edu (8.14.4/8.14.4) with ESMTP id 04O0agqU008743
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 20:36:42 -0400
Received: by mail-il1-f198.google.com with SMTP id x20so12069388ilj.22
 for <usrp-users@lists.ettus.com>; Sat, 23 May 2020 17:36:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hlG7cYLb7FxojcRTXDYF5IW0n6Oqo/1xl7TaYiQpG98=;
 b=TsTcabEpdLLFpph+wGyGoZkPJOuoxU7wPODd4MnRSlHrT3mR9bgxoe6xX5ch/Uv27u
 BqLN2+mo0zyxQRM7zencjtlkZOHYSUAir7x46KFRjnWIZdvmY6OHRhSHpeMbOgtKOVQC
 ByPrXUy5w0nIPtQe8gFWT3XE3zc9WattrsQoHrQe97ayRU3pMApbgarfqsJlJK6zBrUO
 AR1xtUMj51lpgD+R2YkPwgbCvxA/7Ssmb+qGJYJyQLNT+qbAqQ5185Y0DtLIIs17gQCz
 Qupy2gP4t7ByRLxbIPC6sX1Ody+4vqMLjuGO38rZ4WIRXz1SGvudMrE3gpJdY2yH0/IA
 ushQ==
X-Gm-Message-State: AOAM531kts0k5M/uzVVXZNo0UL62NMZdhdPXcJ/1iKX/1fKrEghCUz+J
 ZIKIPlhJfJQjE560ylpb/ooTdcnT3MSU6BsvkMM2MTVK+LS9zNAZ2e4+bvYirZ4Wn+D0ZmobBXj
 JOsTMXBy4Zmy5es/Wu9ny2J8yk378AlJyz5VnwRFZZa8W
X-Received: by 2002:a92:8c4c:: with SMTP id o73mr18955587ild.172.1590280601609; 
 Sat, 23 May 2020 17:36:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxC27sVcEbQtCuo+h+ytw3O1It0u7WJMgd4ki8f5s7RQH9mrR/mDMCScK0wrNEMZp674QVBPqUrXSAgEd5ncQM=
X-Received: by 2002:a92:8c4c:: with SMTP id o73mr18955575ild.172.1590280601168; 
 Sat, 23 May 2020 17:36:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAGsYvigK0JxvLpC38m-tdf6YPS1uPYaBO0wBAUYbbW+ES2c2-A@mail.gmail.com>
 <CADBWrHiABtNSRkDPXEuZ0fXpxDMgbqMpN-Y9jp58WOmWDZ_5mQ@mail.gmail.com>
In-Reply-To: <CADBWrHiABtNSRkDPXEuZ0fXpxDMgbqMpN-Y9jp58WOmWDZ_5mQ@mail.gmail.com>
Date: Sun, 24 May 2020 01:36:05 +0100
Message-ID: <CAGsYviiETbFZ4toeTO8Eox+kC4svHD9POv8foe7K0UdLS6Yt2A@mail.gmail.com>
To: Sam Reiter <sam.reiter8@gmail.com>
X-CU-OB: Yes
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-23_14:2020-05-22,
 2020-05-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=10 adultscore=0
 mlxlogscore=999 clxscore=1015 priorityscore=1501 cotscore=-2147483648
 phishscore=0 suspectscore=0 mlxscore=0 impostorscore=10 malwarescore=0
 spamscore=0 lowpriorityscore=10 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005230204
Subject: Re: [USRP-users] Rounded FFT on USRP N210
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
From: Manav Kohli via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Manav Kohli <mpk2138@columbia.edu>
Cc: "usrp-users \(usrp-users@lists.ettus.com\)" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3194363903861928933=="
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

--===============3194363903861928933==
Content-Type: multipart/alternative; boundary="00000000000053880605a65a0ee7"

--00000000000053880605a65a0ee7
Content-Type: text/plain; charset="UTF-8"

Dear Sam,

Your shot in the dark hit the bullseye. At 25 MHz, this problem goes away
entirely. Will have to work around the limitation at 20 MHz BW in the
future.

Thank you very much!
Manav

On Sun, May 24, 2020 at 12:35 AM Sam Reiter <sam.reiter8@gmail.com> wrote:

> Manav,
>
> I'll take a shot in the dark and point you toward this article I've
> referenced a couple times in the past:
>
>
> https://witestlab.poly.edu/blog/why-does-my-received-spectrum-droop-at-the-edges/
>
> In order to decimate data, the USRP will use halfband filters for
> decimation factors that are a multiple of 2, and will use a CIC filter for
> anything else. The use of this CIC filter causes rolloff similar to what
> you're describing. If you change your sample rate to be a decimation factor
> of 2 from the MCR and you see an improvement, then you've found the culprit.
>
> -Sam
>
> On Sat, May 23, 2020 at 3:08 PM Manav Kohli via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Setup details:
>> USRP N210 w/SBX daugterboard
>> UHD 3.14
>> GNU Radio 3.7
>> Ubuntu 16.04
>> gr-digital GNU Radio OFDM blocks used
>>
>> While attempting channel estimation for 64-subcarrier OFDM, I find that
>> for higher bandwidths, such as 20 MHz, the channel estimate shows the edge
>> subcarriers anywhere from 15-20dB below the central zero subcarrier, even
>> though the anticipated channel is relatively flat.
>>
>> Taking a larger FFT of the entire received OFDM packets shows the same
>> rounding as seen in the channel estimation. This rounding is roughly
>> symmetric, and occurs with any carrier frequency used.
>>
>> It was suggested to me that this may be caused by the antialiasing filter
>> on the SBX board, and any further help/advice would be greatly appreciated.
>> Is such rounding normal, and if so, how could it be compensated?
>>
>> Much thanks,
>> Manav
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000053880605a65a0ee7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Sam,<div><br></div><div>Your shot in the dark hit the=
 bullseye. At 25 MHz, this problem goes away entirely. Will have to work ar=
ound the limitation at 20 MHz BW in the future.</div><div><br></div><div>Th=
ank you very much!</div><div>Manav</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May 24, 2020 at 12:35 AM Sa=
m Reiter &lt;<a href=3D"mailto:sam.reiter8@gmail.com">sam.reiter8@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left=
-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Manav,<div><br><=
/div><div>I&#39;ll take a shot in the dark and point you toward this articl=
e I&#39;ve referenced a couple times in the past:</div><div><br></div><div>=
<a href=3D"https://witestlab.poly.edu/blog/why-does-my-received-spectrum-dr=
oop-at-the-edges/" target=3D"_blank">https://witestlab.poly.edu/blog/why-do=
es-my-received-spectrum-droop-at-the-edges/</a><br></div><div><br></div><di=
v>In order to decimate data, the USRP will use halfband filters for decimat=
ion factors that are a multiple of 2, and will use a CIC filter for anythin=
g else. The use of this CIC filter causes rolloff similar to what you&#39;r=
e describing. If you change your sample rate to be a decimation factor of 2=
 from the MCR and you see an improvement, then you&#39;ve found the culprit=
.</div><div><br></div><div>-Sam</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, May 23, 2020 at 3:08 PM Manav =
Kohli via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0)">Se=
tup details:</div><div style=3D"color:rgb(0,0,0)">USRP N210 w/SBX daugterbo=
ard</div><div style=3D"color:rgb(0,0,0)">UHD 3.14</div><div style=3D"color:=
rgb(0,0,0)">GNU Radio 3.7</div><div style=3D"color:rgb(0,0,0)">Ubuntu 16.04=
</div><div style=3D"color:rgb(0,0,0)">gr-digital GNU Radio OFDM blocks used=
</div><div style=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0=
,0)">While attempting channel estimation for 64-subcarrier OFDM, I find tha=
t for higher bandwidths, such as 20 MHz, the=C2=A0channel estimate shows th=
e edge subcarriers anywhere from 15-20dB below the central zero subcarrier,=
 even though the anticipated channel is relatively flat.=C2=A0</div><div st=
yle=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0)">Taking a=
 larger FFT of the entire received OFDM packets shows the same rounding as =
seen in the channel estimation. This rounding is roughly symmetric, and occ=
urs with any carrier frequency used.=C2=A0</div><div style=3D"color:rgb(0,0=
,0)"><br></div><div style=3D"color:rgb(0,0,0)">It was suggested to me that =
this=C2=A0may be caused by the antialiasing filter on the SBX board, and an=
y further help/advice would be greatly appreciated. Is such rounding normal=
, and if so, how could=C2=A0it be compensated?</div><div style=3D"color:rgb=
(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0)">Much thanks,</div><div s=
tyle=3D"color:rgb(0,0,0)">Manav</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000053880605a65a0ee7--


--===============3194363903861928933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3194363903861928933==--

