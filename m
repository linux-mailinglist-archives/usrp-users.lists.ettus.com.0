Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6976F29D0FE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 17:24:53 +0100 (CET)
Received: from [::1] (port=35816 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXoFl-0007kI-16; Wed, 28 Oct 2020 12:24:49 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:45883)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kXoFg-0007dW-8u
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 12:24:44 -0400
Received: by mail-ed1-f54.google.com with SMTP id dg9so5828252edb.12
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 09:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R0O44lZMmAx2MmyUroTmLPDHsWq1jbBzqa3om6iVKyA=;
 b=0xs8UbSdGVDwCwfyr31SGVE0rCbYDyizWUZ3JJ7k24TR94zv2sry67YqjDqYbISJZM
 x3PxeHY8E7patdda7lmGAMLvaF8a5wumdrTB2MMm1HquZiEe+Q3UL2rJ4vMh6e0zh4yK
 YTlGiekpMEml+LhUQZtWOBaO6j5jtZonJBdSrh5sGvGtJZJvQSt8/tVfH8JBQ5UYjsBP
 QuE5fZeIrR8pDnnVbeW9WmGBVDKfC2owSKshRnD/odj8PCXjRFbPE46qCS43G6We+6rZ
 s251X8uRKQvGxgNnMgzTABmRn2LpPOYCZdPAOziwfiMHhnhYr60ox056RSK5bhj03iWS
 0veA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R0O44lZMmAx2MmyUroTmLPDHsWq1jbBzqa3om6iVKyA=;
 b=ElXRi9KW9/cswSmhEK25dF9TWJ60rgJGf5T3E+dgODp2Uh2w9T6FbTBY1CoLBSapl8
 M3tsN27NoAkQ3WA5V8VWxjiQARUcLMlVJxWhSZwwC1d/54Iy9V+0l1POZGZQhyVJVa1o
 7j29gC+Dx6Rfgop2hMSjbdRiuQ5FU4Bfdvth8kTz86leAsAFlgYBLlFGs3v0C9bTSFaQ
 9F9g7Ndg8H/xyxkN8eS2wpi0gU77D4uT7Q/gJPRcqwMSlHLf3AiKJBspje3ZzS+CN+xW
 G+9M6vdbBraV1kMcuPNIj3ZZAhuDP9hc0zIOWcmYMXYB6DBua8ywfQ0wb3u6k4jrfzmo
 iGPg==
X-Gm-Message-State: AOAM530WsQKV/newcjxpFP6wwHSzQ5DJGiowE2VsbG0B/TIIN0F0s/Fq
 Nw0fY3sjZTG5Qd3Mgbl5+/tIXdFGZPIR84UL5/jco3Mk
X-Google-Smtp-Source: ABdhPJzd2GFW/I7U04DlzBTjMn7Sve0SCKiSZ8K6nAPDrei5LLJmKJOUkXyWNJbGlc3iZ2mEMhD9JjkjwNyYneK3oWo=
X-Received: by 2002:a05:6402:17ad:: with SMTP id
 j13mr5384561edy.347.1603902243245; 
 Wed, 28 Oct 2020 09:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
 <5F8E10F2.4060907@gmail.com>
 <CACaXmv9AZeMpu5FViJgfm23Qt7+Y1L15yKdKoC1nUCnwboPyag@mail.gmail.com>
 <CAAq7EmeC3cYFsOAkD7xOubsyNtiN8sTesKat98sjkWez7+zSBg@mail.gmail.com>
 <CAGNhwTMWh=tBJx5N97D_qxp3M1JwDnEWJQ4Xd2gk7tx=A6kTVw@mail.gmail.com>
 <CAAq7EmedAgMPpwB33d-PXkRDsDgEE2w6cReQ7WPsRJGDu3Kn2w@mail.gmail.com>
In-Reply-To: <CAAq7EmedAgMPpwB33d-PXkRDsDgEE2w6cReQ7WPsRJGDu3Kn2w@mail.gmail.com>
Date: Wed, 28 Oct 2020 12:23:51 -0400
Message-ID: <CAGNhwTNkr4-3uZK0V7LOwE3zXRV=HL88394Kg_ABTNYbOmwMRw@mail.gmail.com>
To: Dev Joshi <joshide@bc.edu>
Cc: Neel Pandeya <neel.pandeya@ettus.com>,
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] ETTUS N200 device start issue -- works only after
 second and subsequent invocations
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============6899065607914645370=="
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

--===============6899065607914645370==
Content-Type: multipart/alternative; boundary="00000000000076a52d05b2bd9737"

--00000000000076a52d05b2bd9737
Content-Type: text/plain; charset="UTF-8"

Let's take this off-USRP list for the moment. We can always reply to the
list if appropriate once this issue is resolved. - MLD


On Wed, Oct 28, 2020 at 12:15 PM Dev Joshi <joshide@bc.edu> wrote:

>
>
> *uhd_find_devices --args="type=usrp2"[INFO] [UHD] linux; GNU C++ version
> 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2deNo UHD Devices Found *
>
> I tried that many times and got the answer as above !
> Thanks.
>
>
> Dev Joshi, PhD
> Postdoctoral Research Associate
> Department of Physics and Engineering
> The University of Scranton
> C: 617 775 9712
>
>
> On Wed, Oct 28, 2020 at 12:13 PM Michael Dickens <
> michael.dickens@ettus.com> wrote:
>
>> Try "type=usrp2" ...
>>
>> On Wed, Oct 28, 2020 at 12:09 PM Dev Joshi via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Neel,
>>>
>>> Thanks for the reply, I tried the suggestion:
>>>
>>>   * augment your device string with type=n2xx*
>>>
>>> And this is what I get:
>>>
>>>
>>> *uhd_find_devices --args="type=n200"No UHD Devices Found*
>>>
>>> Thanks.
>>>
>>> Best,
>>> Dev Joshi, PhD
>>> Postdoctoral Research Associate
>>> Department of Physics and Engineering
>>> The University of Scranton
>>> C: 617 775 9712
>>>
>>>
>>> On Tue, Oct 27, 2020 at 10:10 AM Neel Pandeya <neel.pandeya@ettus.com>
>>> wrote:
>>>
>>>> Hello Dev Joshi:
>>>>
>>>> Is the N200 directly connected to the host computer?
>>>>
>>>> What are the IP addresses and netmask of the host and the N200? Do you
>>>> have a gateway address configured?
>>>>
>>>> Earlier, Marcus suggested trying to augment your device string with
>>>> "type=n2xx". Did you try that?
>>>>
>>>> --Neel Pandeya
>>>>
>>>>
>>>>
>>>> On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> On 10/19/2020 05:32 PM, Dev Joshi via USRP-users wrote:
>>>>>
>>>>> Hello everyone,
>>>>>
>>>>> I hope everyone is keeping well through these unusual times. I am
>>>>> writing to request assistance on an issue I am facing while running Ettus
>>>>> N200 device. The  device is installed to receive high frequency radio waves
>>>>> and it is connected to an internet port by an Ethernet cable  as is the
>>>>> computer (Ubuntu). I can ping the device from the terminal of the computer.
>>>>> But, whenever I invoke the USRP N200 using any command, it doesn't work as
>>>>> shown below :
>>>>>
>>>>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>>>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>>>> No UHD Devices Found
>>>>>
>>>>> But, if  I pass the command soon after the first invocation, it works
>>>>> as shown below:
>>>>>
>>>>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>>>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>>>> --------------------------------------------------
>>>>> -- UHD Device 0
>>>>> --------------------------------------------------
>>>>> Device Address:
>>>>>     serial: 31D09D8
>>>>>     addr: xx.xx.xxx.xx
>>>>>     name:
>>>>>     type: usrp2
>>>>>
>>>>> And, subsequent invocations in the near future work.  And, it applies
>>>>> for any other command I have used to invoke the
>>>>> USRP device. I would greatly appreciate suggestions from experienced
>>>>> users in this list.  And, one more issue, the above command used to work
>>>>> without passing the "addr" argument. But recently, it doesn't respond if I
>>>>> don't pass that argument.
>>>>>
>>>>> I would greatly appreciate suggestions on these two points.
>>>>>
>>>>> Thanks.
>>>>>
>>>>> Best,
>>>>> Dev
>>>>>
>>>>>
>>>>> augment your device string with type=n2xx
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000076a52d05b2bd9737
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Let&#39;s take this off-USRP list for the moment. We can a=
lways reply to the list if appropriate once this issue is resolved. - MLD<b=
r><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Oct 28, 2020 at 12:15 PM Dev Joshi &lt;<a href=3D"mailto:josh=
ide@bc.edu">joshide@bc.edu</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><i>uhd_find_devices --args=3D&qu=
ot;type=3Dusrp2&quot;<br>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_1=
06501; UHD_3.15.0.HEAD-0-gaea0e2de<br>No UHD Devices Found=C2=A0</i><div><b=
r></div><div>I tried that many times and got the=C2=A0answer as above !=C2=
=A0</div><div>Thanks.<br><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
div style=3D"margin:0px;padding:0px;border:0px;font-stretch:inherit;font-si=
ze:12pt;line-height:inherit;font-family:Calibri,Arial,Helvetica,sans-serif;=
vertical-align:baseline;color:black"><br></div><div style=3D"margin:0px;pad=
ding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit=
;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;col=
or:black"><br></div><div style=3D"margin:0px;padding:0px;border:0px;font-st=
retch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,=
Helvetica,sans-serif;vertical-align:baseline;color:black"><span style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;font-size:large;line-height:inherit;f=
ont-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color:rgb(34,=
34,34)">Dev Joshi, PhD</span><span style=3D"margin:0px;padding:0px;border:0=
px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch=
:inherit;font-size:14pt;line-height:inherit;font-family:inherit;vertical-al=
ign:baseline;color:rgb(102,102,102)"><b></b></span><span style=3D"margin:0p=
x;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:inherit=
"><br></span></div><div style=3D"margin:0px;padding:0px;border:0px;font-str=
etch:inherit;font-size:12pt;line-height:inherit;font-family:Calibri,Arial,H=
elvetica,sans-serif;vertical-align:baseline;color:black"><div style=3D"marg=
in:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:in=
herit"><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertic=
al-align:baseline;color:rgb(102,102,102)">Postdoctoral Research Associate</=
span></div><div style=3D"margin:0px;padding:0px;border:0px;font:inherit;ver=
tical-align:baseline;color:inherit"><span style=3D"margin:0px;padding:0px;b=
order:0px;font:inherit;vertical-align:baseline;color:rgb(102,102,102)">Depa=
rtment of Physics and Engineering</span></div><div style=3D"margin:0px;padd=
ing:0px;border:0px;font:inherit;vertical-align:baseline;color:inherit"><spa=
n style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:ba=
seline;color:rgb(102,102,102)">The University of Scranto</span><span style=
=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;=
color:rgb(102,102,102)">n</span></div><div style=3D"margin:0px;padding:0px;=
border:0px;font:inherit;vertical-align:baseline;color:inherit"><span style=
=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;=
color:rgb(102,102,102)">C:</span><span style=3D"margin:0px;padding:0px;bord=
er:0px;font:inherit;vertical-align:baseline;color:inherit">=C2=A0617 775 97=
12</span></div></div></div></div></div></div></div></div></div></div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Oct 28, 2020 at 12:13 PM Michael Dickens &lt;<a href=3D"mailto:=
michael.dickens@ettus.com" target=3D"_blank">michael.dickens@ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Try &quot;type=3Dusrp2&quot; ...<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 28, 2020 at 12:=
09 PM Dev Joshi via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi Neel,<div><br></div><div>Thanks for the reply, I tried the sugg=
estion:=C2=A0</div><div><br></div><div>=C2=A0 <i>=C2=A0augment your device =
string with=C2=A0<span>type</span>=3D<span>n2xx</span></i></div><div><i><br=
></i></div><div>And this is what I get:=C2=A0</div><div><br></div><div><i>u=
hd_find_devices --args=3D&quot;type=3Dn200&quot;<br>No UHD Devices Found</i=
></div><div><br></div><div>Thanks.</div><div><br></div><div>Best,<br><div><=
div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"margin:0=
px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:i=
nherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseli=
ne;color:black"><span style=3D"margin:0px;padding:0px;border:0px;font-style=
:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font=
-size:large;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vert=
ical-align:baseline;color:rgb(34,34,34)">Dev Joshi, PhD</span><span style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:14pt;line-height:inhe=
rit;font-family:inherit;vertical-align:baseline;color:rgb(102,102,102)"><b>=
</b></span><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;ve=
rtical-align:baseline;color:inherit"><br></span></div><div style=3D"margin:=
0px;padding:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:=
inherit;font-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:basel=
ine;color:black"><div style=3D"margin:0px;padding:0px;border:0px;font:inher=
it;vertical-align:baseline;color:inherit"><span style=3D"margin:0px;padding=
:0px;border:0px;font:inherit;vertical-align:baseline;color:rgb(102,102,102)=
">Postdoctoral Research Associate</span></div><div style=3D"margin:0px;padd=
ing:0px;border:0px;font:inherit;vertical-align:baseline;color:inherit"><spa=
n style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:ba=
seline;color:rgb(102,102,102)">Department of Physics and Engineering</span>=
</div><div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical=
-align:baseline;color:inherit"><span style=3D"margin:0px;padding:0px;border=
:0px;font:inherit;vertical-align:baseline;color:rgb(102,102,102)">The Unive=
rsity of Scranto</span><span style=3D"margin:0px;padding:0px;border:0px;fon=
t:inherit;vertical-align:baseline;color:rgb(102,102,102)">n</span></div><di=
v style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:ba=
seline;color:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font=
:inherit;vertical-align:baseline;color:rgb(102,102,102)">C:</span><span sty=
le=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baselin=
e;color:inherit">=C2=A0617 775 9712</span></div></div></div></div></div></d=
iv></div></div></div></div></div></div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 27, 2020 at 10=
:10 AM Neel Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D=
"_blank">neel.pandeya@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family=
:verdana,sans-serif">Hello Dev Joshi:<br><br>Is the N200 directly connected=
 to the host computer?<br><br>What are the IP addresses and netmask of the =
host and the N200? Do you have a gateway address configured?<br><br>Earlier=
, Marcus suggested trying to augment your device string with &quot;type=3Dn=
2xx&quot;. Did you try that?<br clear=3D"all"></div><div style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><fo=
nt face=3D"verdana, sans-serif">--Neel Pandeya</font><div><br></div><div><b=
r></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via=
 USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 10/19/2020 05:32 PM, Dev Joshi via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div style=3D"margin:0px;padding:0px;border:0px=
;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibr=
i,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span sty=
le=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inh=
erit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:i=
nherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color=
:rgb(34,34,34)">Hello
                                everyone,<br>
                                <br>
                                I hope everyone is keeping well through
                                these unusual times. I am writing to
                                request assistance on an issue I am
                                facing while running Ettus N200 device.
                                The =C2=A0device is installed to receive hi=
gh
                                frequency radio waves and it is
                                connected to an internet port by an
                                Ethernet cable =C2=A0as is the computer
                                (Ubuntu). I can ping the device from the
                                terminal of the computer. But, whenever
                                I invoke the USRP N200 using any
                                command, it doesn&#39;t work as shown below
                                :<br>
                                <br>
                                uhd_find_devices
                                --args=3D&quot;addr=3Dxx.xx.xxx.xx&quot;<br=
>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
                                No UHD Devices Found<br>
                                <br>
                                But, if =C2=A0I pass the command soon after
                                the first invocation, it works as shown
                                below:<br>
                                <br>
                                uhd_find_devices
                                --args=3D&quot;addr=3Dxx.xx.xxx.xx&quot;<br=
>
                                [INFO] [UHD] linux; GNU C++ version
                                7.5.0; Boost_106501;
                                UHD_3.15.0.HEAD-0-gaea0e2de<br>
--------------------------------------------------<br>
                                -- UHD Device 0<br>
--------------------------------------------------<br>
                                Device Address:<br>
                                =C2=A0 =C2=A0 serial: 31D09D8<br>
                                =C2=A0 =C2=A0 addr: xx.xx.xxx.xx<br>
                                =C2=A0 =C2=A0 name: <br>
                                =C2=A0 =C2=A0 type: usrp2<br>
                                <br>
                                And, subsequent invocations in the near
                                future work.=C2=A0 And, it applies for any
                                other command I have used to invoke the
                                <br>
                                USRP device. I would greatly appreciate
                                suggestions from experienced users in
                                this list.=C2=A0 And, one more issue, the
                                above command used to work without
                                passing the &quot;addr&quot; argument. But
                                recently, it doesn&#39;t respond if I don&#=
39;t
                                pass that argument. <br>
                                <br>
                              </span></div>
                            <div style=3D"margin:0px;padding:0px;border:0px=
;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibr=
i,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span sty=
le=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inh=
erit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:i=
nherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color=
:rgb(34,34,34)">I
                                would greatly appreciate suggestions on
                                these two points. <br>
                                <br>
                                Thanks.<br>
                                <br>
                                Best,<br>
                                Dev<br>
                              </span></div>
                            <div style=3D"margin:0px;padding:0px;border:0px=
;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibr=
i,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span sty=
le=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inh=
erit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:i=
nherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;color=
:rgb(34,34,34)"><br>
                              </span></div>
                            <br>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    augment your device string with type=3Dn2xx<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
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

--00000000000076a52d05b2bd9737--


--===============6899065607914645370==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6899065607914645370==--

