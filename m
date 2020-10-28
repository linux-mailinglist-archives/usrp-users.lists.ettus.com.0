Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C6429D0F4
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 17:14:19 +0100 (CET)
Received: from [::1] (port=35612 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXo5Z-00073V-AR; Wed, 28 Oct 2020 12:14:17 -0400
Received: from mail-ej1-f65.google.com ([209.85.218.65]:43720)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kXo5V-0006vV-8U
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 12:14:13 -0400
Received: by mail-ej1-f65.google.com with SMTP id k3so8060038ejj.10
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 09:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FTjrVflZH1nrVvnwBLBqyLA/QZtTqHa9mttE4bRvAH0=;
 b=TltbHdBTKT6/Vcg8HSsULwchVUjOOTnP/ziuX6KXIKwcELw5SKHJU4mxEAuDBCcu2W
 RnFU6/e6+7QxHY+vkbhH+wvTjoA36UEVcP7X+vcx0Ne/etn29FmyQgb4UuurtTMP5IM9
 AAv3JQBfuFvadPds4PFOyJzZkxIPdW7UBjqPFJ6FnRJhPvCpH5Em+QsCJOq0Dqqjxxzy
 6IIwtY32349zYu45F/y2NNyJcrZG1z6Kkibr/Kw1p1Da9a7LeRMRPP0Ky1wzo+Ik9sII
 j9UjB/LKCE72rIMV/79g5zzn+j/uK+Jk+ucSFGYRO5Mhk4wIpsVseTaXnNZkAizP5R/v
 YCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FTjrVflZH1nrVvnwBLBqyLA/QZtTqHa9mttE4bRvAH0=;
 b=L4Rb9t8/B7vRMpBmBGPv0dY1TfvlPRYg9pEsQV4U6JOc2uOPTtb0WiXaA3nAO9dsnI
 AFyzWOuaYsXmu1PUdybUCeXJCGAOwYjpKqPcYTWbLnPowzbiWc5lSOCcK985W7QtR9HQ
 Hle8wbZTyZHgUS+ls2BUjpWYi2ajAD25RK94X2CVi9skJvK8XN1xQOBAewnixwgwEoD9
 I3PoipVjmnjtkxrkl/petoZFSrgiu8WIzH4uLh34iCX+4MJcdMatX1qh6leFNJldZI/v
 G1kPF0lSecOweNt6jDEw2OF5XLKRd8hsBMeYiGB+FYt4gzRD8c5C2aOmCY6snbX7Q1Hw
 4UoA==
X-Gm-Message-State: AOAM531AnCFsM133641v0QsrFfMWh1tsUiUzFCb4kH2zllBMHP5dJ0+h
 BXl1xSzYEZ2bUWYboQhO9RiE41rIj9YWxYp4stIriAQ/
X-Google-Smtp-Source: ABdhPJzd0QcoWMkI4jvflR07FwrFvz+N+a0hNiLipU9jGzzsV7dBIHKvEJpkdSU3XXejsraclXzQy+YsKK+yjAQ6PeQ=
X-Received: by 2002:a17:906:c041:: with SMTP id
 bm1mr8136788ejb.202.1603901612119; 
 Wed, 28 Oct 2020 09:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
 <5F8E10F2.4060907@gmail.com>
 <CACaXmv9AZeMpu5FViJgfm23Qt7+Y1L15yKdKoC1nUCnwboPyag@mail.gmail.com>
 <CAAq7EmeC3cYFsOAkD7xOubsyNtiN8sTesKat98sjkWez7+zSBg@mail.gmail.com>
In-Reply-To: <CAAq7EmeC3cYFsOAkD7xOubsyNtiN8sTesKat98sjkWez7+zSBg@mail.gmail.com>
Date: Wed, 28 Oct 2020 12:13:20 -0400
Message-ID: <CAGNhwTMWh=tBJx5N97D_qxp3M1JwDnEWJQ4Xd2gk7tx=A6kTVw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7459302465637510232=="
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

--===============7459302465637510232==
Content-Type: multipart/alternative; boundary="000000000000d873c805b2bd71e7"

--000000000000d873c805b2bd71e7
Content-Type: text/plain; charset="UTF-8"

Try "type=usrp2" ...

On Wed, Oct 28, 2020 at 12:09 PM Dev Joshi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Neel,
>
> Thanks for the reply, I tried the suggestion:
>
>   * augment your device string with type=n2xx*
>
> And this is what I get:
>
>
> *uhd_find_devices --args="type=n200"No UHD Devices Found*
>
> Thanks.
>
> Best,
> Dev Joshi, PhD
> Postdoctoral Research Associate
> Department of Physics and Engineering
> The University of Scranton
> C: 617 775 9712
>
>
> On Tue, Oct 27, 2020 at 10:10 AM Neel Pandeya <neel.pandeya@ettus.com>
> wrote:
>
>> Hello Dev Joshi:
>>
>> Is the N200 directly connected to the host computer?
>>
>> What are the IP addresses and netmask of the host and the N200? Do you
>> have a gateway address configured?
>>
>> Earlier, Marcus suggested trying to augment your device string with
>> "type=n2xx". Did you try that?
>>
>> --Neel Pandeya
>>
>>
>>
>> On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 10/19/2020 05:32 PM, Dev Joshi via USRP-users wrote:
>>>
>>> Hello everyone,
>>>
>>> I hope everyone is keeping well through these unusual times. I am
>>> writing to request assistance on an issue I am facing while running Ettus
>>> N200 device. The  device is installed to receive high frequency radio waves
>>> and it is connected to an internet port by an Ethernet cable  as is the
>>> computer (Ubuntu). I can ping the device from the terminal of the computer.
>>> But, whenever I invoke the USRP N200 using any command, it doesn't work as
>>> shown below :
>>>
>>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>> No UHD Devices Found
>>>
>>> But, if  I pass the command soon after the first invocation, it works as
>>> shown below:
>>>
>>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>>> UHD_3.15.0.HEAD-0-gaea0e2de
>>> --------------------------------------------------
>>> -- UHD Device 0
>>> --------------------------------------------------
>>> Device Address:
>>>     serial: 31D09D8
>>>     addr: xx.xx.xxx.xx
>>>     name:
>>>     type: usrp2
>>>
>>> And, subsequent invocations in the near future work.  And, it applies
>>> for any other command I have used to invoke the
>>> USRP device. I would greatly appreciate suggestions from experienced
>>> users in this list.  And, one more issue, the above command used to work
>>> without passing the "addr" argument. But recently, it doesn't respond if I
>>> don't pass that argument.
>>>
>>> I would greatly appreciate suggestions on these two points.
>>>
>>> Thanks.
>>>
>>> Best,
>>> Dev
>>>
>>>
>>> augment your device string with type=n2xx
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d873c805b2bd71e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Try &quot;type=3Dusrp2&quot; ...<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 28, 2020=
 at 12:09 PM Dev Joshi via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=
 Neel,<div><br></div><div>Thanks for the reply, I tried the suggestion:=C2=
=A0</div><div><br></div><div>=C2=A0 <i>=C2=A0augment your device string wit=
h=C2=A0<span>type</span>=3D<span>n2xx</span></i></div><div><i><br></i></div=
><div>And this is what I get:=C2=A0</div><div><br></div><div><i>uhd_find_de=
vices --args=3D&quot;type=3Dn200&quot;<br>No UHD Devices Found</i></div><di=
v><br></div><div>Thanks.</div><div><br></div><div>Best,<br><div><div dir=3D=
"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"margin:0px;padding=
:0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;fon=
t-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:b=
lack"><span style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;f=
ont-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:larg=
e;line-height:inherit;font-family:Arial,Helvetica,sans-serif;vertical-align=
:baseline;color:rgb(34,34,34)">Dev Joshi, PhD</span><span style=3D"margin:0=
px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:14pt;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(102,102,102)"><b></b></span><=
span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align=
:baseline;color:inherit"><br></span></div><div style=3D"margin:0px;padding:=
0px;border:0px;font-stretch:inherit;font-size:12pt;line-height:inherit;font=
-family:Calibri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:bl=
ack"><div style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-=
align:baseline;color:inherit"><span style=3D"margin:0px;padding:0px;border:=
0px;font:inherit;vertical-align:baseline;color:rgb(102,102,102)">Postdoctor=
al Research Associate</span></div><div style=3D"margin:0px;padding:0px;bord=
er:0px;font:inherit;vertical-align:baseline;color:inherit"><span style=3D"m=
argin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color=
:rgb(102,102,102)">Department of Physics and Engineering</span></div><div s=
tyle=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:basel=
ine;color:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font:in=
herit;vertical-align:baseline;color:rgb(102,102,102)">The University of Scr=
anto</span><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;ve=
rtical-align:baseline;color:rgb(102,102,102)">n</span></div><div style=3D"m=
argin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color=
:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;ver=
tical-align:baseline;color:rgb(102,102,102)">C:</span><span style=3D"margin=
:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:inhe=
rit">=C2=A0617 775 9712</span></div></div></div></div></div></div></div></d=
iv></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 27, 2020 at 10:10 AM Neel =
Pandeya &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"_blank">nee=
l.pandeya@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:verdana,sans-=
serif">Hello Dev Joshi:<br><br>Is the N200 directly connected to the host c=
omputer?<br><br>What are the IP addresses and netmask of the host and the N=
200? Do you have a gateway address configured?<br><br>Earlier, Marcus sugge=
sted trying to augment your device string with &quot;type=3Dn2xx&quot;. Did=
 you try that?<br clear=3D"all"></div><div style=3D"font-family:verdana,san=
s-serif"><br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"ver=
dana, sans-serif">--Neel Pandeya</font><div><br></div><div><br></div></div>=
</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
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

--000000000000d873c805b2bd71e7--


--===============7459302465637510232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7459302465637510232==--

