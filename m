Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A0D2D14D2
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 16:37:28 +0100 (CET)
Received: from [::1] (port=36870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmIZp-0002mN-ED; Mon, 07 Dec 2020 10:37:25 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:34447)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kmIZl-0002fK-0w
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 10:37:21 -0500
Received: by mail-oi1-f171.google.com with SMTP id s75so12737100oih.1
 for <usrp-users@lists.ettus.com>; Mon, 07 Dec 2020 07:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/6Gk7ppWi9fr7tX0OD+zAPG433VgRoUzLipOOsAHMbo=;
 b=bsSF43MYtw5nTKgcIBOxq0BzB/mbJIyfN3iI1/3NGM//poplFGICoiIck/aVFRbCtG
 Pnjwm11JIou+SloKWzeK1A/ILtpskzkk401n9sq4+PrsWA5PgIyiG39iZm5CQ0sfTLPO
 SOSkp1kadr/z4l5PB65Ub3vL5LUBjmYW8ivrXXa4AK70mfD2zOMNElI7CJAjOukVV7QH
 kwkkzit1hBKN7SWxI7zm3liz1lQLRf5p3wozncAQ+WwzLY1kC1gEPsMtDW/swfmsKUaQ
 F35B5XQwJjynEGrnkp2gWJP8o89BbchHPjX5DrDtD5uCokrdfgcEX+akdkvqxNG2riEi
 H/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/6Gk7ppWi9fr7tX0OD+zAPG433VgRoUzLipOOsAHMbo=;
 b=UKTXFZ9up3bioVYQC9XVyqT4jMBtf0U3IcUMp96yMNKEufLJytEUw0mqIw5OOswyiB
 GcY66nzsVGIxd3mIHHUvsWqXlcwWLxjLaiXSg538o3ufNU1HwGvnfH2FMCWCkx4RpuTQ
 lPIsFONNWeO81wyA+RY3sPNqulLfrDtGIpgpGBb8bhDFhKqHleP4lPDskWBvHj2PH3qc
 0iIHtZ1GzhWfZfFgQCjACEavro9yrcZ+8Qko+lpX/TJaObWOuVmmcbJPGmy+RlnWkqP6
 gm9JP2OCO5cs45ae9tS0nyPV0uyeFHYFb3csbLkVKSZCq04c0vZI6cLn56Ldn6X2HvR2
 Mrkg==
X-Gm-Message-State: AOAM532qH15Kwlbga/6N5rgwCktfdg4ZHnTs1HOQT+NMIJKE99gRDNs6
 UnLfBYyr23+8VjuyIvDa16e8Jaon3BNnE/8MnMZKbR+GBLw=
X-Google-Smtp-Source: ABdhPJyAG+MgLGKsZRbxZ4KQpSpGzjf7cwlYz2m/xZ39DZjcImbunJvUmgPQsNdvwcYuEAvQL/YakXbgxSOrfrijjLI=
X-Received: by 2002:aca:5ec2:: with SMTP id s185mr12861942oib.33.1607355400021; 
 Mon, 07 Dec 2020 07:36:40 -0800 (PST)
MIME-Version: 1.0
References: <CACDReSxO=0GoV5V07cjZt2N=BTGOifrs758xHS+snj7bQTXzGQ@mail.gmail.com>
 <CAB__hTSMYb6R7hQXg7Cju1ocFjMmkZ8EDGs24diez2Bndb-wBQ@mail.gmail.com>
 <CACDReSwkJRVUoqoTksWBDuoHf8Mo+5p3ua7kWRRNSVuA6S8+TA@mail.gmail.com>
In-Reply-To: <CACDReSwkJRVUoqoTksWBDuoHf8Mo+5p3ua7kWRRNSVuA6S8+TA@mail.gmail.com>
Date: Mon, 7 Dec 2020 10:36:29 -0500
Message-ID: <CAB__hTQXt-nz1Sn_0GoQNbqOs8gtLGQ9EOn4BpMMRmdYX9fa4w@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using GPS disciplining on E310
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6416701085256136232=="
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

--===============6416701085256136232==
Content-Type: multipart/alternative; boundary="000000000000a5b5ea05b5e197a0"

--000000000000a5b5ea05b5e197a0
Content-Type: text/plain; charset="UTF-8"

Hi Ofer,
I don't really know the answer but you might want to search past posts on
the topic of E310 gps synchronization.  Some of the posts are fairly old
(~2016, 2017), but they indicate timing accuracies that are on the order of
several microseconds.  Perhaps this is related to the E310 having a GPS but
not a GPSDO as indicated in the users manual.  If this level of accuracy is
not acceptable for your application, you may need to consider alternatives.
Rob


On Sat, Dec 5, 2020 at 12:04 PM Ofer Saferman <ofer@navigicom.com> wrote:

> Hello Rob,
>
> Thanks for the response.
> I am not trying to get the LOs to sync in phase. I know that is not
> possible unless I use a common external LO. I have a method to find and
> cancel the phase difference of caused by the LOs.
> I am only trying to get the base-band Tx samples to be synced.
> I was wondering whether the 1-PPS signal synchronizes the 10 MHz
> references of all E310 in frequency or in phase.
>
> Regarding your other question - I plan to run the software on each of the
> E310 independently without any host computer. Thus, if the clocks of the
> units can be synced I can set the transmission to start 1 minute in the
> future (or something similar) and I am hoping since the clocks are truly
> synced to get synced base-band Tx samples on different E310 units.
>
> Regards,
> Ofer Saferman
>
> On Fri, Dec 4, 2020 at 10:46 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Ofer,
>> Here is my understanding
>> - The E310 can sync to a PPS signal (either external input or obtained
>> from GPS).  From this PPS, the E310 derives the 10MHz ref signal and uses
>> that as ref for LO signal.  So, there will be lots of phase variation
>> between the LOs in all of your E310 devices even though they will all be
>> trying to stay in sync with a 1 pulse-per-second signal.
>> - Regarding your time synchronization question, there are examples of
>> setting the E310 clock (using set_time_next_pps, I think) to match the GPS
>> clock.  Thus, all of your E310s could have the same time.  But, how do you
>> plan to control all of your E310s when you want the transmit to turn on?
>> Will you have an SSH session to each of them?
>> Rob
>>
>> On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hello,
>>> I would like to synchronize several E310 devices.
>>> It is my understanding that the only way to do that is by connecting a
>>> GPS antenna and performing disciplining to a derived 1-PPS signal.
>>> I have a few questions to help me better understand how to make it work:
>>> 1. Does GPS disciplining achieve frequency lock between devices or phase
>>> lock?
>>> 2. How to start transmitting at the exact moment on all synchronized
>>> devices? Can the unit clock be synchronized to GPS clock? and then just
>>> start the transmission with some delay from unit clock on all devices? Can
>>> someone share the relevant C commands to perform the time synchronization
>>> to GPS clock or point to a relevant code example?
>>>
>>> Thanks,
>>> Ofer Saferman
>>>
>>>
>>> --
>>> This message has been scanned for viruses and
>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>>> is
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean.

--000000000000a5b5ea05b5e197a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ofer,<div>I don&#39;t really know the =
answer but you might want to search past posts on the topic of E310 gps syn=
chronization.=C2=A0 Some of the posts are fairly old (~2016, 2017), but the=
y indicate timing accuracies that are on the order of several microseconds.=
=C2=A0 Perhaps this is related to the E310 having a GPS but not a GPSDO as =
indicated in the users manual.=C2=A0 If this level of accuracy=C2=A0is not =
acceptable for your application, you may need to consider alternatives.</di=
v><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sat, Dec 5, 2020 at 12:04 PM Ofer Saferma=
n &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigico=
m.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hello Rob,</div><div><br></div><div>Thanks for t=
he response.</div><div>I am not trying to get the LOs to sync in phase. I k=
now that is not possible unless I use a common external LO. I have a method=
 to find and cancel the phase difference of caused by the LOs.<br></div><di=
v>I am only trying to get the base-band Tx samples to be synced.</div><div>=
I was wondering whether the 1-PPS signal synchronizes the 10 MHz references=
 of all E310 in frequency or in phase.</div><div><br></div><div>Regarding y=
our other question - I plan to run the software on each of the E310 indepen=
dently without any host computer. Thus, if the clocks of the units can be s=
ynced I can set the transmission to start 1 minute in the future (or someth=
ing similar) and I am hoping since the clocks are truly synced to get synce=
d base-band Tx samples on different E310 units.</div><div><br></div><div>Re=
gards,</div><div>Ofer Saferman<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 4, 2020 at 10:46 PM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Ofer,<div>Here is my understandi=
ng</div><div>- The E310 can sync to a PPS signal (either external input or =
obtained from GPS).=C2=A0 From this PPS, the E310 derives the 10MHz ref sig=
nal and uses that as ref for LO signal.=C2=A0 So, there will be lots of pha=
se variation between the LOs in all of your E310 devices even though they w=
ill all be trying to stay in sync with a 1 pulse-per-second signal.</div><d=
iv>- Regarding your time synchronization question, there are examples of se=
tting the E310 clock (using set_time_next_pps, I think) to match the GPS cl=
ock.=C2=A0 Thus, all of your E310s could have the same time.=C2=A0 But, how=
 do you plan to control all of your E310s when you want the transmit to tur=
n on?=C2=A0 Will you have an SSH session to each of them?=C2=A0</div><div>R=
ob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Fri, Dec 4, 2020 at 2:28 PM Ofer Saferman via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div>I would like to synchron=
ize several E310 devices.</div><div>It is my understanding that the only wa=
y to do that is by connecting a GPS antenna and performing disciplining to =
a derived 1-PPS signal.</div><div>I have a few questions to help me better =
understand how to make it work:</div><div>1. Does GPS disciplining achieve =
frequency lock between devices or phase lock?</div><div>2. How to start tra=
nsmitting at the exact moment on all synchronized devices? Can the unit clo=
ck be synchronized to GPS clock? and then just start the transmission with =
some delay from unit clock on all devices? Can someone share the relevant C=
 commands to perform the time synchronization to GPS clock or point to a re=
levant code example?</div><div><br></div><div>Thanks,</div><div>Ofer Saferm=
an<br></div><div><br></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</=
b></a>, and is
<br>believed to be clean.

</blockquote></div>
</div>

--000000000000a5b5ea05b5e197a0--


--===============6416701085256136232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6416701085256136232==--

