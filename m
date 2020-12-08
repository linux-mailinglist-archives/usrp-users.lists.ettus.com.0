Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8342D2896
	for <lists+usrp-users@lfdr.de>; Tue,  8 Dec 2020 11:12:49 +0100 (CET)
Received: from [::1] (port=46504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmZzB-00058c-Ij; Tue, 08 Dec 2020 05:12:45 -0500
Received: from sainfoin-smtp-out.extra.cea.fr ([132.167.192.228]:52201)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <rodolphe.bertolini@cea.fr>)
 id 1kmZz6-000533-QW
 for usrp-users@lists.ettus.com; Tue, 08 Dec 2020 05:12:40 -0500
Received: from pisaure.intra.cea.fr (pisaure.intra.cea.fr [132.166.88.21])
 by sainfoin-sys.extra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with
 ESMTP id 0B8ABwxm024838; Tue, 8 Dec 2020 11:11:58 +0100
Received: from pisaure.intra.cea.fr (localhost [127.0.0.1])
 by localhost (Postfix) with SMTP id DB3FA2073AE;
 Tue,  8 Dec 2020 11:11:58 +0100 (CET)
Received: from muguet1-smtp-out.intra.cea.fr (muguet1-smtp-out.intra.cea.fr
 [132.166.192.12])
 by pisaure.intra.cea.fr (Postfix) with ESMTP id CD01A206F47;
 Tue,  8 Dec 2020 11:11:58 +0100 (CET)
Received: from EXCAH-B3.intra.cea.fr (excah-b3.intra.cea.fr [132.166.88.88])
 by muguet1-sys.intra.cea.fr (8.14.7/8.14.7/CEAnet-Internet-out-4.0) with ESMTP
 id 0B8ABwXF015481; Tue, 8 Dec 2020 11:11:58 +0100
Received: from EXDAG0-B2.intra.cea.fr ([fe80::d079:8496:6c6c:9b1f]) by
 EXCAH-B3.intra.cea.fr ([fe80::947a:e02d:e083:3de0%10]) with mapi id
 14.03.0487.000; Tue, 8 Dec 2020 11:11:58 +0100
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 "openair5g-user@lists.eurecom.fr" <openair5g-user@lists.eurecom.fr>
Thread-Topic: [USRP-users] b210 and x310 synchronisation from non-GPSDO
 external clock
Thread-Index: AdbMsoHX5t1C4woBSqeb4w+HbyxvCAABHYaAACRW7XA=
Date: Tue, 8 Dec 2020 10:11:58 +0000
Message-ID: <F479266F97CCAE47854721C82406934E3072A013@EXDAG0-B2.intra.cea.fr>
References: <F479266F97CCAE47854721C82406934E30729EF6@EXDAG0-B2.intra.cea.fr>
 <5FCE67DF.8030502@gmail.com>
In-Reply-To: <5FCE67DF.8030502@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [132.166.88.106]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.100.1062-23234.003
x-tm-as-result: No--14.449900-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [USRP-users] b210 and x310 synchronisation from non-GPSDO
 external clock
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: BERTOLINI Rodolphe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: BERTOLINI Rodolphe <rodolphe.bertolini@cea.fr>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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

Thank you for your reply and for the information, Marcus.

In my setup, there are :
- 2 base stations : one b210, one x310
- 1 UE : one b210

So in OAI there is a procedure at UE side that checks for downlink offset a=
round a specified carrier frequency before attaching to base station. =

Base stations are asked to transmit around a carrier at 2.68Ghz
When using internal clock source, UE detects an offset of :
- roughly -5.3kHz around 2.68GHz for x310 base station;
- roughly +0.9kHz around 2.68GHz for b210 base station

When using my external clock source, UE detects an offset of :
- roughly -54kHz around 2.68GHz for x310 base station;
- roughly +20kHz around 2.68GHz for b210 base station

When I sent the email yesterday, UE wasn't checking offset more than |10kHz=
| so this is why it wasn't detecting base stations broadcasts.
You said that " the internal clocks are already pretty good" so I had the i=
dea that if mine is less good, then offset would likely be further than whe=
n using internal clock. And it seems to be the case.
Thank you for the hint.

Now, UE cannot attach to base station, basically it doesn't decode anything=
 except synchronisation signals and MIB. I think it is because of the poor =
quality clock.

Do you think that using the Ettus OctoClock-G can enable base station time =
synchronisation while reducing carrier offset and without breaking everythi=
ng as my poor clock does?

Thank you again.
Regards,
Rodolphe

-----Message d'origine-----
De=A0: USRP-users <usrp-users-bounces@lists.ettus.com> De la part de Marcus=
 D. Leech via USRP-users
Envoy=E9=A0: lundi 7 d=E9cembre 2020 18:35
=C0=A0: usrp-users@lists.ettus.com
Objet=A0: Re: [USRP-users] b210 and x310 synchronisation from non-GPSDO ext=
ernal clock

On 12/07/2020 11:24 AM, BERTOLINI Rodolphe via USRP-users wrote:
> Dear all,
>
> I put both mailing list (OAI and USRP) because both may have something to=
 do with my problem. I apologize if it is not appropriate.
>
> I would like to synchronize a b210 and an x310 using a square signal gene=
rated by a function generator. It has a 10MHz ref output, so I generate a 1=
Hz square clock through a regular front output.
> Except the output voltage, is there something I should care about ? I use=
 them with OAI, and they both are used as LTE base stations. When the base =
station is on external ref, UE doesn't detect the base station. When the ba=
se station is on internal ref, UE detects base station broadcasts and conne=
cts to the base station.
>
> Note 1 : PPS and REF are well detected by the USRP, when I change for exa=
mple PPS frequency, x310 led changes respectively.
> Note 2 : only one USRP is used at the same time, I want to make it =

> work first with only one base stations, and then when base stations are b=
oth on and synchronised Note 3 : in OAI code, there is something like :
>
> usrp_master_clock =3D 30.72e6;
> args +=3D boost::str(boost::format(",master_clock_rate=3D%f") % =

> usrp_master_clock); args +=3D ",num_send_frames=3D256,num_recv_frames=3D2=
56, =

> send_frame_size=3D7680, recv_frame_size=3D7680" ;
>
> Is this master clock related to the sampling rate, or should it be change=
d to 10MHz?
The master clock rate is related to the available sampling rates, and not t=
he external reference frequency, which is 10MHz.  The B210 is
   quite flexible in its master clock rate, but the X310 is much more limit=
ed in the master-clock rates it supports.



>
> Note 4 : I looked at the spectrum of signal sent by base station, I =

> don't see any difference between the setup with external clock and the =

> setup with internal clock
Unless you have your spectrum analyser set-up for very-fine resolution, you=
 likely won't see much difference--the internal clocks are
   already pretty good.


>
> Any pointer would be much appreciated
> Thank you.
>
> Regards,
> Rodolphe
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
