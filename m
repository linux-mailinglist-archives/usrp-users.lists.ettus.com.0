Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 862D51A6C76
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2020 21:28:36 +0200 (CEST)
Received: from [::1] (port=42866 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jO4kz-0007Fi-UP; Mon, 13 Apr 2020 15:28:33 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:34604)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <101science@gmail.com>)
 id 1jO4kw-00077b-P5
 for usrp-users@lists.ettus.com; Mon, 13 Apr 2020 15:28:30 -0400
Received: by mail-qk1-f169.google.com with SMTP id t3so6879804qkg.1
 for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2020 12:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:date:message-id:subject:from:to:cc:in-reply-to
 :references:user-agent;
 bh=Dk+G8NYNrYUHw805Zq5LlNYKblYTBFykDxSkTZs4EBM=;
 b=KE7ZBYzZD7ZU6q/G098PHU2lyr46uQHJO7cKF+05KeR3mYsa4tgty/l1VbNpY+q6pv
 q/e1XmWi5UUKQyxCGauwXf91uRwCJVjcs1scQBv8fFFdZtHh2Dc5Wis6ASIKQyt+kCsg
 fPU+fRB29Xbxu4VWNQtYi4hppYfX01E2gOcHWEmo716Ik9T3lizXSZw8wJismHeJ2uJV
 YrtQ5GH24p0ojHLhV0Y60MoY+l9C89+X1m08lNgHJrM4NhDRVPdNjoZmS/NTzASEy1ZO
 xop9MQ8PCpwln8keS/9bItq8cmmb/rrSP5hqx1qndCAackMB0bJw+sSDlIVLZysc6fC8
 njYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
 :in-reply-to:references:user-agent;
 bh=Dk+G8NYNrYUHw805Zq5LlNYKblYTBFykDxSkTZs4EBM=;
 b=V/2XjY5Ow8u7hSlQjRLLtUgsUADZwGVGANxdeWq5FL5ycQB/maTvdNnpVnwIDkK6sl
 CkNupVZSrhD+8QbgOGVIrBgUtj/3vZ7eEQFNWHGCq9MLiUpzKFUb45Jh+2N1+T53N7Ib
 ePbF/EwtF22a0TbHAyNwrxKy5gKOGKGbyLqSf/3wbCdXXV4Nou7/VKVSo1KvOXHa2Usx
 vgxmwFbNTcDMp5k5u28+SJi5btcHvpT61I6wOzFl56SXWZ0Zj689Gjf5xoDXUpuAwBCp
 bImKn4KOJn+03d3qMUWNlpxAY4Kp+C+ffDleMtic5ZnmhQEX2sw6V1qQJrgCFFdkVmiv
 T32A==
X-Gm-Message-State: AGi0PuaZ3L8U3LsY3AGYdafEnvtJi5o6T8nSpQWcdofSubZzLKnbxKxl
 hk2KLgQsdGVtBp+ur5tokXc=
X-Google-Smtp-Source: APiQypLJFUlbr1zt+lZkFYBj88DJPbBePrDW1KmsA2V0Ix0G3kPIAvZYH/AJMBC2QWl93V21qWQDoA==
X-Received: by 2002:a37:a486:: with SMTP id
 n128mr15604845qke.140.1586806070227; 
 Mon, 13 Apr 2020 12:27:50 -0700 (PDT)
Received: from [192.168.0.215] (h69-131-192-186.nlsnga.dsl.dynamic.tds.net.
 [69.131.192.186])
 by smtp.gmail.com with ESMTPSA id x124sm9025706qkc.70.2020.04.13.12.27.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 12:27:49 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Apr 2020 15:27:38 -0400
Message-ID: <Mailbird-04320bbf-ee41-435c-89dd-bf96d296fab4@gmail.com>
To: "Marcus D Leech" <patchvonbraun@gmail.com>
In-Reply-To: <826A2CAB-9970-42C9-8E53-A4872C0E94AD@gmail.com>
References: <F8D7B678-10F4-40E7-9209-7ED7781FB9EC@gmail.com>
 <826A2CAB-9970-42C9-8E53-A4872C0E94AD@gmail.com>
User-Agent: Mailbird/2.8.1.0
X-Mailbird-ID: Mailbird-04320bbf-ee41-435c-89dd-bf96d296fab4@gmail.com
Subject: Re: [USRP-users] USRP-users Digest, Vol 116, Issue 9
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
From: Larry Dodd via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Larry Dodd <101science@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2928132126283730993=="
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

--===============2928132126283730993==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_43786926.076254922715"

------=_NextPart_43786926.076254922715
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Marcus
OK Thanks very much.=C2=A0 Appreciate the help.
Larry
On 4/13/2020 2:11:00 PM, Marcus D Leech <patchvonbraun@gmail.com> wrote:
An N210 with an LFRX card will suit your needs.

You could also consider a B200 with an external upconverter.

Sent from my iPhone

> On Apr 13, 2020, at 1:59 PM, Larry Dodd via USRP-users wrote:
>
> =EF=BB=BFSam Or Anyone,
> My requirement is for 15 MHz bandwidth for monitoring 15 to 30 MHz. No de=
modulation required. I=E2=80=99m confused as to which USRP unit would work =
for this requirement. Any help will be appreciated. I don=E2=80=99t mind th=
e cost but don=E2=80=99t want to get one that won=E2=80=99t fit my requirem=
ent. It will be for monitoring Jupiter storms and solar flares. Thanks.
> Larry, K4LED
>
>> On Apr 13, 2020, at 12:20 PM, usrp-users-request@lists.ettus.com wrote:
>>
>> =EF=BB=BFSend USRP-users mailing list submissions to
>> usrp-users@lists.ettus.com
>>
>> To subscribe or unsubscribe via the World Wide Web, visit
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> or, via email, send a message with subject or body 'help' to
>> usrp-users-request@lists.ettus.com
>>
>> You can reach the person managing the list at
>> usrp-users-owner@lists.ettus.com
>>
>> When replying, please edit your Subject line so it is more specific
>> than "Re: Contents of USRP-users digest..."
>>
>>
>> Today's Topics:
>>
>> 1. Re: UBX 10-500 MHz Question (Marcus M?ller)
>>
>>
>> ----------------------------------------------------------------------
>>
>> Message: 1
>> Date: Mon, 13 Apr 2020 14:48:08 +0200
>> From: Marcus M?ller
>> To: usrp-users@lists.ettus.com
>> Subject: Re: [USRP-users] UBX 10-500 MHz Question
>> Message-ID: <1670730f-772e-0818-8e3a-825fee7dc9d5@ettus.com>
>> Content-Type: text/plain; charset=3Dutf-8
>>
>> Hi Bob, hi Sam,
>>
>> top of my head, UBX-160 doesn't even have adjustable bandwidth
>> (basically, of the modern devices, only AD9xxx-based systems have). So,
>> yeah, you'll always get a two-sided84 MHz analog bandwidth (that's how
>> you get 160 MHz in complex baseband). You'll notice when oversampling at
>> 200 MS/s that analog filters are quite a bit worse than what's
>> relatively easy to do in digital filtering in an FPGA at these rate.
>>
>> On classic Gen-3 DDC chain (I do think that's the same for the newer
>> RFNoC chain), yes, there's two 2-decimating half-band FIRs with upwards
>> of 40 taps, and a CIC to do the rest of the decimation. So, if you use a
>> sampling rate that divides the master clock rate by 4, you get two HBs,
>> if it doesn't divide by 4, but by 2, you still get one of these nicer
>> HBs, and for odd factors, you'll fully have to rely on the CIC. That's
>> not necessarily terrible, but CICs do have sinc?-y shape, so that's a
>> bit of rolloff at the edges.
>>
>> Cheers,
>> Marcus
>>>> On 10.04.20 05:44, Sam Reiter via USRP-users wrote:
>>> Bob,
>>>
>>> The 84MHz bandwidth constraint is because of the analog bandpass filter
>>> [1] on the UBX's RX signal path [2]. I'd guess that UHD will yell at you
>>> if you feed in an invalid bandwidth, but I've never tried it. If I
>>> remember correctly, you can sample at rates that aren't an even division
>>> of the MCR, you'll just end up using a CIC filter that causes rolloff in
>>> your spectrum [3].
>>>
>>> - Sam
>>>
>>> [1]?https://www.mouser.com/datasheet/2/412/55916-1504717.pdf
>>> [2]?https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf
>>> [3]?https://witestlab.poly.edu/blog/why-does-my-received-spectrum-droop=
-at-the-edges/
>>>
>>> On Wed, Apr 8, 2020 at 4:49 PM Tillson, Bob (US) via USRP-users
>>> > wrote:
>>>
>>> so with the UBX-160 on an X310, there is the following caveat:____
>>>
>>> __?__
>>>
>>> * The UBX 160 transmitter path has 160 MHz of bandwidth throughout
>>> the full frequency range of the device; the receiver path has 84 MHz
>>> of bandwidth for center frequencies from 10 MHz to 500 MHz.____
>>>
>>> __?__
>>>
>>> I guess my question is how does this manifest itself?____
>>>
>>> __?__
>>>
>>> If I ask for 100 MHz of BW, do I get 84 or does it fail?____
>>>
>>> __?__
>>>
>>> How would I get 84 given the requirement of sample rate be an even
>>> divisor of 200 MHz clock?____
>>>
>>> __?__
>>>
>>> If I wanted 100 in that range, would there be any way to get it from
>>> a single channel in that band?? Most other cards don?t seem to have
>>> the BW in that range.____
>>>
>>> __?__
>>>
>>> Thanks,____
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>>
>> ------------------------------
>>
>> Subject: Digest Footer
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> ------------------------------
>>
>> End of USRP-users Digest, Vol 116, Issue 9
>> ******************************************
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

------=_NextPart_43786926.076254922715
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #000000">=0A                                        =0A         =
                               =0A                                         =
   =0A                                        =0A                          =
              =0A                                        Marcus<div class=
=3D"mb_sig"></div>=0A                                        =0A           =
                             <div>OK Thanks very much.&nbsp; Appreciate the=
 help.</div><div>Larry</div><blockquote class=3D"history_container" type=3D=
"cite" style=3D"border-left-style: solid;border-width: 1px;margin-top: 20px=
;margin-left: 0px;padding-left: 10px;min-width: 500px">=0A                 =
       <p style=3D"color: #AAAAAA; margin-top: 10px;">On 4/13/2020 2:11:00 =
PM, Marcus D Leech &lt;patchvonbraun@gmail.com&gt; wrote:</p><div style=3D"=
font-family:Arial,Helvetica,sans-serif">An N210 with an LFRX card will suit=
 your needs. =0A<br>=0A<br>You could also consider a B200 with an external =
upconverter. =0A<br>=0A<br>Sent from my iPhone=0A<br>=0A<br>&gt; On Apr 13,=
 2020, at 1:59 PM, Larry Dodd via USRP-users <usrp-users@lists.ettus.com> w=
rote:=0A<br>&gt; =0A<br>&gt; =EF=BB=BFSam Or Anyone,=0A<br>&gt; My requirem=
ent is for 15 MHz bandwidth for monitoring 15 to 30 MHz. No demodulation re=
quired. I=E2=80=99m confused as to which USRP unit would work for this requ=
irement.  Any help will be appreciated. I don=E2=80=99t mind the cost but d=
on=E2=80=99t want to get one that won=E2=80=99t fit my requirement. It will=
 be for monitoring Jupiter storms and solar flares. Thanks. =0A<br>&gt; Lar=
ry, K4LED =0A<br>&gt; =0A<br>&gt;&gt; On Apr 13, 2020, at 12:20 PM, usrp-us=
ers-request@lists.ettus.com wrote:=0A<br>&gt;&gt; =0A<br>&gt;&gt; =EF=BB=BF=
Send USRP-users mailing list submissions to=0A<br>&gt;&gt;   usrp-users@lis=
ts.ettus.com=0A<br>&gt;&gt; =0A<br>&gt;&gt; To subscribe or unsubscribe via=
 the World Wide Web, visit=0A<br>&gt;&gt;   http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com=0A<br>&gt;&gt; or, via email, send a me=
ssage with subject or body 'help' to=0A<br>&gt;&gt;   usrp-users-request@li=
sts.ettus.com=0A<br>&gt;&gt; =0A<br>&gt;&gt; You can reach the person manag=
ing the list at=0A<br>&gt;&gt;   usrp-users-owner@lists.ettus.com=0A<br>&gt=
;&gt; =0A<br>&gt;&gt; When replying, please edit your Subject line so it is=
 more specific=0A<br>&gt;&gt; than "Re: Contents of USRP-users digest..."=
=0A<br>&gt;&gt; =0A<br>&gt;&gt; =0A<br>&gt;&gt; Today's Topics:=0A<br>&gt;&=
gt; =0A<br>&gt;&gt;  1. Re: UBX 10-500 MHz Question (Marcus M?ller)=0A<br>&=
gt;&gt; =0A<br>&gt;&gt; =0A<br>&gt;&gt; -----------------------------------=
-----------------------------------=0A<br>&gt;&gt; =0A<br>&gt;&gt; Message:=
 1=0A<br>&gt;&gt; Date: Mon, 13 Apr 2020 14:48:08 +0200=0A<br>&gt;&gt; From=
: Marcus M?ller <marcus.mueller@ettus.com>=0A<br>&gt;&gt; To: usrp-users@li=
sts.ettus.com=0A<br>&gt;&gt; Subject: Re: [USRP-users] UBX 10-500 MHz Quest=
ion=0A<br>&gt;&gt; Message-ID: &lt;1670730f-772e-0818-8e3a-825fee7dc9d5@ett=
us.com&gt;=0A<br>&gt;&gt; Content-Type: text/plain; charset=3Dutf-8=0A<br>&=
gt;&gt; =0A<br>&gt;&gt; Hi Bob, hi Sam,=0A<br>&gt;&gt; =0A<br>&gt;&gt; top =
of my head, UBX-160 doesn't even have adjustable bandwidth=0A<br>&gt;&gt; (=
basically, of the modern devices, only AD9xxx-based systems have). So,=0A<b=
r>&gt;&gt; yeah, you'll always get a two-sided84 MHz analog bandwidth (that=
's how=0A<br>&gt;&gt; you get 160 MHz in complex baseband). You'll notice w=
hen oversampling at=0A<br>&gt;&gt; 200 MS/s that analog filters are quite a=
 bit worse than what's=0A<br>&gt;&gt; relatively easy to do in digital filt=
ering in an FPGA at these rate.=0A<br>&gt;&gt; =0A<br>&gt;&gt; On classic G=
en-3 DDC chain (I do think that's the same for the newer=0A<br>&gt;&gt; RFN=
oC chain), yes, there's two 2-decimating half-band FIRs with upwards=0A<br>=
&gt;&gt; of 40 taps, and a CIC to do the rest of the decimation. So, if you=
 use a=0A<br>&gt;&gt; sampling rate that divides the master clock rate by 4=
, you get two HBs,=0A<br>&gt;&gt; if it doesn't divide by 4, but by 2, you =
still get one of these nicer=0A<br>&gt;&gt; HBs, and for odd factors, you'l=
l fully have to rely on the CIC. That's=0A<br>&gt;&gt; not necessarily terr=
ible, but CICs do have sinc?-y shape, so that's a=0A<br>&gt;&gt; bit of rol=
loff at the edges.=0A<br>&gt;&gt; =0A<br>&gt;&gt; Cheers,=0A<br>&gt;&gt; Ma=
rcus=0A<br>&gt;&gt;&gt;&gt; On 10.04.20 05:44, Sam Reiter via USRP-users wr=
ote:=0A<br>&gt;&gt;&gt; Bob,=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt; The 84M=
Hz bandwidth constraint is because of the analog bandpass filter=0A<br>&gt;=
&gt;&gt; [1] on the UBX's RX signal path [2]. I'd guess that UHD will yell =
at you=0A<br>&gt;&gt;&gt; if you feed in an invalid bandwidth, but I've nev=
er tried it. If I=0A<br>&gt;&gt;&gt; remember correctly, you can sample at =
rates that aren't an even division=0A<br>&gt;&gt;&gt; of the MCR, you'll ju=
st end up using a CIC filter that causes rolloff in=0A<br>&gt;&gt;&gt; your=
 spectrum [3].=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt; - Sam=0A<br>&gt;&gt;&=
gt; =0A<br>&gt;&gt;&gt; [1]?https://www.mouser.com/datasheet/2/412/55916-15=
04717.pdf=0A<br>&gt;&gt;&gt; [2]?https://files.ettus.com/schematics/ubx/UBX=
-160_revE.pdf=0A<br>&gt;&gt;&gt; [3]?https://witestlab.poly.edu/blog/why-do=
es-my-received-spectrum-droop-at-the-edges/=0A<br>&gt;&gt;&gt; =0A<br>&gt;&=
gt;&gt; On Wed, Apr 8, 2020 at 4:49 PM Tillson, Bob (US) via USRP-users=0A<=
br>&gt;&gt;&gt; <usrp-users@lists.ettus.com></usrp-users@lists.ettus.com><m=
ailto:usrp-users@lists.ettus.com>&gt; wrote:=0A<br>&gt;&gt;&gt; =0A<br>&gt;=
&gt;&gt;   so with the UBX-160 on an X310, there is the following caveat:__=
__=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   __?__=0A<br>&gt;&gt;&gt; =0A<br=
>&gt;&gt;&gt;   * The UBX 160 transmitter path has 160 MHz of bandwidth thr=
oughout=0A<br>&gt;&gt;&gt;   the full frequency range of the device; the re=
ceiver path has 84 MHz=0A<br>&gt;&gt;&gt;   of bandwidth for center frequen=
cies from 10 MHz to 500 MHz.____=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   _=
_?__=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   I guess my question is how do=
es this manifest itself?____=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   __?__=
=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   If I ask for 100 MHz of BW, do I =
get 84 or does it fail?____=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   __?__=
=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   How would I get 84 given the requ=
irement of sample rate be an even=0A<br>&gt;&gt;&gt;   divisor of 200 MHz c=
lock?____=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   __?__=0A<br>&gt;&gt;&gt;=
 =0A<br>&gt;&gt;&gt;   If I wanted 100 in that range, would there be any wa=
y to get it from=0A<br>&gt;&gt;&gt;   a single channel in that band?? Most =
other cards don?t seem to have=0A<br>&gt;&gt;&gt;   the BW in that range.__=
__=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   __?__=0A<br>&gt;&gt;&gt; =0A<br=
>&gt;&gt;&gt;   Thanks,____=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt;   ______=
_________________________________________=0A<br>&gt;&gt;&gt;   USRP-users m=
ailing list=0A<br>&gt;&gt;&gt;   USRP-users@lists.ettus.com <mailto:usrp-us=
ers@lists.ettus.com>=0A<br>&gt;&gt;&gt;   http://lists.ettus.com/mailman/li=
stinfo/usrp-users_lists.ettus.com=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt;&gt; =
=0A<br>&gt;&gt;&gt; _______________________________________________=0A<br>&=
gt;&gt;&gt; USRP-users mailing list=0A<br>&gt;&gt;&gt; USRP-users@lists.ett=
us.com=0A<br>&gt;&gt;&gt; http://lists.ettus.com/mailman/listinfo/usrp-user=
s_lists.ettus.com=0A<br>&gt;&gt;&gt; =0A<br>&gt;&gt; =0A<br>&gt;&gt; =0A<br=
>&gt;&gt; =0A<br>&gt;&gt; ------------------------------=0A<br>&gt;&gt; =0A=
<br>&gt;&gt; Subject: Digest Footer=0A<br>&gt;&gt; =0A<br>&gt;&gt; ________=
_______________________________________=0A<br>&gt;&gt; USRP-users mailing l=
ist=0A<br>&gt;&gt; USRP-users@lists.ettus.com=0A<br>&gt;&gt; http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com=0A<br>&gt;&gt; =0A<br>=
&gt;&gt; =0A<br>&gt;&gt; ------------------------------=0A<br>&gt;&gt; =0A<=
br>&gt;&gt; End of USRP-users Digest, Vol 116, Issue 9=0A<br>&gt;&gt; *****=
*************************************=0A<br>&gt; =0A<br>&gt; ______________=
_________________________________=0A<br>&gt; USRP-users mailing list=0A<br>=
&gt; USRP-users@lists.ettus.com=0A<br>&gt; http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com=0A<br></mailto:usrp-users@lists.ettus.co=
m></mailto:usrp-users@lists.ettus.com><!--1670730f-772e-0818-8e3a-825fee7dc=
9d5@ettus.com--></marcus.mueller@ettus.com></usrp-users@lists.ettus.com></d=
iv></blockquote></div>
------=_NextPart_43786926.076254922715--


--===============2928132126283730993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2928132126283730993==--

