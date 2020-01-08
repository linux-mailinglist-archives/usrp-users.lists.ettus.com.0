Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8EC1346B1
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jan 2020 16:51:22 +0100 (CET)
Received: from [::1] (port=43592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipDc7-0000l5-VD; Wed, 08 Jan 2020 10:51:19 -0500
Received: from mail-lj1-f171.google.com ([209.85.208.171]:38666)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipDc3-0000eo-O9
 for usrp-users@lists.ettus.com; Wed, 08 Jan 2020 10:51:15 -0500
Received: by mail-lj1-f171.google.com with SMTP id w1so3838507ljh.5
 for <usrp-users@lists.ettus.com>; Wed, 08 Jan 2020 07:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d31UDyjnnS8qnQb30ATl5pEHzOwUxkDfkAuJXegwbsI=;
 b=TgcsMj3Da6StgO9t+Pm7kDg/dnuJJjgQRfqpxoUyH9PXx8Bx/ASFJUZiBS4oHWLfm9
 GqBvGDNuTl/qkOdroTISGbjPIAi7bHErI6Fwa6nfBsFW0i94iw6ekEDbxqsJXJv4X+7y
 jPMUB+HEuld5rsLugWL2LJJOwiYuWeaDd5c7m6R60x/wuY3grHEplrYqfwwZpjq6fa7D
 NstPAQIzjTZBl//tHH49aSAeEeQso+Cov3REbY/8C2KC5H7A9z6N18IUGo09CisUJJHe
 t4ZOTmKH8NhBv2sHbWLQ/tB62kdFlEDbYbDVtnVHPVRd6haZFZ+nq9N8NfEUg5EfHJCB
 8wBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d31UDyjnnS8qnQb30ATl5pEHzOwUxkDfkAuJXegwbsI=;
 b=ZHSv820sT2es+w0ComJirsHhzsyuFOtdgB8PZh2s/GVOnxnGV94o/VJ73D03f16nsq
 isvdiymFUxdvPDefIEI0rcWNA3lSmJMaKOORfAetYo86mxrgIUPCEDL5D2MMb1U+I/tS
 Bce8G1DYZBN+Kuz5EWjx0aCK+hicalYUA1pBU73mdMRP1eJNBi4KVcH2HOfktHab4YST
 WrE2Z7nAVya0p3ndDhnKeDm40WRT3IrbEbXP2069rrdpi/Q6HpHHIdkiBINPNoFkRwqN
 c6dr3dwWwUfrN1Of7PF4oJh/1zZrUdVoa0sQ4MDYodO5+SNfVN5rQE85+x0mJ2IDa+0J
 a4Lw==
X-Gm-Message-State: APjAAAUGnSXHFq45CqX8JdOtRQj8sl9aHkJLtFdoxa2rXrZZ3qpNkOZz
 s4/JANGqnZrtaSdsKmHe0WtVZkbxagsN4/b+NHAGe9Zf
X-Google-Smtp-Source: APXvYqzaIyRXlEK+xn0jw1HzDwmO148mkN0W3zIovlrTAq5N9Wk7po11u2mp2yZKgOBvHfBBuarloTExdiW0zUpwrKY=
X-Received: by 2002:a05:651c:1a8:: with SMTP id
 c8mr2886783ljn.207.1578498634306; 
 Wed, 08 Jan 2020 07:50:34 -0800 (PST)
MIME-Version: 1.0
References: <CAN1jYK2xxTUj8JLYOJW6eEJe6BxQK8z1hXyu7vmbn9yzVEXp+Q@mail.gmail.com>
 <CAB__hTTHRDOi+L+Gpf+kMNyt-RtdNQ-B+GGY=iC0DKxASQa3NA@mail.gmail.com>
In-Reply-To: <CAB__hTTHRDOi+L+Gpf+kMNyt-RtdNQ-B+GGY=iC0DKxASQa3NA@mail.gmail.com>
Date: Wed, 8 Jan 2020 09:50:22 -0600
Message-ID: <CANf970aBsj3R2XiZwcZ0T0if1OJJkeMPzC91Xgxz2TG5vCS5JQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] UHD RFNoC Update
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1205522177532772819=="
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

--===============1205522177532772819==
Content-Type: multipart/alternative; boundary="00000000000060641c059ba2da8a"

--00000000000060641c059ba2da8a
Content-Type: text/plain; charset="UTF-8"

Hey Rob,

We're working on updating our RFNoC materials on kb.ettus.com currently.
This RFNoC specification should be a good supplement in the meantime:

https://files.ettus.com/app_notes/RFNoC_Specification.pdf

Sam

On Tue, Jan 7, 2020 at 9:32 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Brent,
> Is there any documentation or info that describes the major changes for
> RFNoC and UHD that you mentioned?
> Rob
>
> On Tue, Jan 7, 2020 at 3:23 PM Brent Stapleton via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hey All,
>>
>> A couple months ago, we released the next iteration of the RFNoC
>> framework in the master-next branch of the UHD repository. Recently, we've
>> merged that into our master branch, and today we've pushed our most recent
>> work public. This includes large and sweeping changes to our core RFNoC
>> infrastructure, as well as the UHD API, and brings us one (or maybe a few)
>> steps closer to the UHD 4.0 release.
>>
>> If you'd like to update your MPM-based device to the most recent changes,
>> you'll need to update to the most recent filesystems (based on the
>> OpenEmbedded Thud release), then update MPM itself, as described in the
>> "Modifying and compiling UHD and MPM" sections of the UHD manual (1).
>> Again, master is an unstable branch, and these are large changes, so if you
>> would like to use a stable API, we recommend using the recent v3.15.0.0
>> release.
>>
>> Happy hacking,
>> Brent
>>
>> (1) https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev
>> and https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev
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

--00000000000060641c059ba2da8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Rob,</div><div><br></div><div>We&#39;re working o=
n updating our RFNoC materials on <a href=3D"http://kb.ettus.com">kb.ettus.=
com</a> currently. This RFNoC specification should be a good supplement in =
the meantime:</div><div><br></div><div><a href=3D"https://files.ettus.com/a=
pp_notes/RFNoC_Specification.pdf">https://files.ettus.com/app_notes/RFNoC_S=
pecification.pdf</a></div><div><br></div><div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Sam<br></div></div></div></div></div></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan =
7, 2020 at 9:32 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Brent,<d=
iv>Is there any documentation or info that describes the major changes for =
RFNoC and UHD that you mentioned?</div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 7, 2020 =
at 3:23 PM Brent Stapleton via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;f=
ont-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space:=
pre-wrap">Hey All,</span><br style=3D"color:rgb(32,33,36);font-family:Robot=
o,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacin=
g:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font-family:=
Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-s=
pacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-=
family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;l=
etter-spacing:0.1px;white-space:pre-wrap">A couple months ago, we released =
the next iteration of the RFNoC framework in the master-next branch of the =
UHD repository. Recently, we&#39;ve merged that into our master branch, and=
 today we&#39;ve pushed our most recent work public. This includes large an=
d sweeping changes to our core RFNoC infrastructure, as well as the UHD API=
, and brings us one (or maybe a few) steps closer to the UHD 4.0 release. <=
/span><br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;=
font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space=
:pre-wrap"><br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-s=
erif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-=
space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial=
,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px=
;white-space:pre-wrap">If you&#39;d like to update your MPM-based device to=
 the most recent changes, you&#39;ll need to update to the most recent file=
systems (based on the OpenEmbedded Thud release), then update MPM itself, a=
s described in the &quot;Modifying and compiling UHD and MPM&quot; sections=
 of the UHD manual (1). Again, master is an unstable branch, and these are =
large changes, so if you would like to use a stable API, we recommend using=
 the recent v3.15.0.0 release.</span><br style=3D"color:rgb(32,33,36);font-=
family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;l=
etter-spacing:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);=
font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:n=
one;letter-spacing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,=
33,36);font-family:Roboto,Arial,sans-serif;font-size:16px;font-variant-liga=
tures:none;letter-spacing:0.1px;white-space:pre-wrap">Happy hacking,</span>=
<br style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif;font-s=
ize:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-w=
rap"><span style=3D"color:rgb(32,33,36);font-family:Roboto,Arial,sans-serif=
;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-spac=
e:pre-wrap">Brent</span><br style=3D"color:rgb(32,33,36);font-family:Roboto=
,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing=
:0.1px;white-space:pre-wrap"><br style=3D"color:rgb(32,33,36);font-family:R=
oboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;letter-sp=
acing:0.1px;white-space:pre-wrap"><span style=3D"color:rgb(32,33,36);font-f=
amily:Roboto,Arial,sans-serif;font-size:16px;font-variant-ligatures:none;le=
tter-spacing:0.1px;white-space:pre-wrap">(1) </span><a rel=3D"nofollow" hre=
f=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_software_dev" =
style=3D"color:rgb(102,17,204);font-family:Roboto,Arial,sans-serif;font-siz=
e:16px;font-variant-ligatures:none;letter-spacing:0.1px;white-space:pre-wra=
p" target=3D"_blank">https://files.ettus.com/manual/page_usrp_n3xx.html#n3x=
x_software_dev</a><span style=3D"color:rgb(32,33,36);font-family:Roboto,Ari=
al,sans-serif;font-size:16px;font-variant-ligatures:none;letter-spacing:0.1=
px;white-space:pre-wrap"> and </span><a rel=3D"nofollow" href=3D"https://fi=
les.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev" style=3D"color:=
rgb(102,17,204);font-family:Roboto,Arial,sans-serif;font-size:16px;font-var=
iant-ligatures:none;letter-spacing:0.1px;white-space:pre-wrap" target=3D"_b=
lank">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev<=
/a><br></div>
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
</blockquote></div>

--00000000000060641c059ba2da8a--


--===============1205522177532772819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1205522177532772819==--

