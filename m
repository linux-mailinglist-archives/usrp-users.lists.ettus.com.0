Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5D129D0F1
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 17:09:17 +0100 (CET)
Received: from [::1] (port=35464 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXo0d-0006WU-RX; Wed, 28 Oct 2020 12:09:11 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:45100)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <joshide@bc.edu>) id 1kXo0Z-0006P7-LR
 for usrp-users@lists.ettus.com; Wed, 28 Oct 2020 12:09:07 -0400
Received: by mail-ot1-f65.google.com with SMTP id f37so4680301otf.12
 for <usrp-users@lists.ettus.com>; Wed, 28 Oct 2020 09:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bc-edu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t4gm2Fze73huZaKuVOc3Qz+t97V/9TtoBSsl89bceqE=;
 b=RzoTAkrSG32akFB/sWFqpzg58xHoBXw9zhCgqJYIKNlcskZ9efUn9wio5PVrWtcbLM
 7cAs1dNxAvrCtMnLJOAFVq2mSRs0X7EbUUcQNKniuIAH4RkxhB3FyHLMRZa4BfDIDAEZ
 oU+zHTfyhPM5oeeKPpW2oWpquRUMc504mLkAgOzg7i1LOlV8tIzevJBSeCNRxAnnxEbm
 8khfsQU4/9In66aYUnFYN6jjNB4S4pk6jaP59CSzhppOYhLaCWFQJLcW7C5mn6uH+v1S
 cEXclP0bg8XnEfO6rTtMA9GiNjl5gvgc+rWrEXfw9ix1VT+jIFf5+LEpda0eYxoBsS4G
 Xw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t4gm2Fze73huZaKuVOc3Qz+t97V/9TtoBSsl89bceqE=;
 b=sfKZUQjXPSKnuqdYh+Lzr0xkXU/FIjVaKsZ1ZRbntgEpmZQCzPcocGk6JipFN1wVAm
 G0oFANZGmB8mq75Q3/QzTuAZ+5N+0BQWjUWGl/jRy6scUoq4iC77BE1wAKNNevCg8MWs
 kGvnJA7MZRuaFqLv0kp/jsDRLcXNwXlcQ+nUdTloR+ZxkKvSNniJK/i9anPtYOKoJ5pc
 gb1RjfVK/0B1P1oOK8y+WlcS0ihf5KrB/yfTdjaMXKrTfGGyi1QitrlJHjrxp5Pgyq+v
 iZ2nFSylsDns9sAuF89JbzTjm4JR+yyvXGYDPI97ffRdx1fXh4QCIR4cycHlXJ5FntLA
 inaQ==
X-Gm-Message-State: AOAM531A+eZqqC7Vh6It0nHcZSl9k1vMIxGIE65Wxrme83aF5Xm10yf2
 k5+kaL4+qLihq/CN+jbMeOH5Oi7NnvTQrsRG69ZZfQ==
X-Google-Smtp-Source: ABdhPJymey6eAcl1GcIP/WaxjLcmdw5NE6shXs2nVA8swxXBbeTOkUYX8aEhOzzq6csmnoGQeVw9IdY3KyyY1+8AZCk=
X-Received: by 2002:a9d:64c7:: with SMTP id n7mr5349082otl.137.1603901306810; 
 Wed, 28 Oct 2020 09:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
 <5F8E10F2.4060907@gmail.com>
 <CACaXmv9AZeMpu5FViJgfm23Qt7+Y1L15yKdKoC1nUCnwboPyag@mail.gmail.com>
In-Reply-To: <CACaXmv9AZeMpu5FViJgfm23Qt7+Y1L15yKdKoC1nUCnwboPyag@mail.gmail.com>
Date: Wed, 28 Oct 2020 12:08:16 -0400
Message-ID: <CAAq7EmeC3cYFsOAkD7xOubsyNtiN8sTesKat98sjkWez7+zSBg@mail.gmail.com>
To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
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
From: Dev Joshi via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dev Joshi <joshide@bc.edu>
Content-Type: multipart/mixed; boundary="===============3438896434031931060=="
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

--===============3438896434031931060==
Content-Type: multipart/alternative; boundary="000000000000a5c87c05b2bd5fdc"

--000000000000a5c87c05b2bd5fdc
Content-Type: text/plain; charset="UTF-8"

Hi Neel,

Thanks for the reply, I tried the suggestion:

  * augment your device string with type=n2xx*

And this is what I get:


*uhd_find_devices --args="type=n200"No UHD Devices Found*

Thanks.

Best,
Dev Joshi, PhD
Postdoctoral Research Associate
Department of Physics and Engineering
The University of Scranton
C: 617 775 9712


On Tue, Oct 27, 2020 at 10:10 AM Neel Pandeya <neel.pandeya@ettus.com>
wrote:

> Hello Dev Joshi:
>
> Is the N200 directly connected to the host computer?
>
> What are the IP addresses and netmask of the host and the N200? Do you
> have a gateway address configured?
>
> Earlier, Marcus suggested trying to augment your device string with
> "type=n2xx". Did you try that?
>
> --Neel Pandeya
>
>
>
> On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 10/19/2020 05:32 PM, Dev Joshi via USRP-users wrote:
>>
>> Hello everyone,
>>
>> I hope everyone is keeping well through these unusual times. I am writing
>> to request assistance on an issue I am facing while running Ettus N200
>> device. The  device is installed to receive high frequency radio waves and
>> it is connected to an internet port by an Ethernet cable  as is the
>> computer (Ubuntu). I can ping the device from the terminal of the computer.
>> But, whenever I invoke the USRP N200 using any command, it doesn't work as
>> shown below :
>>
>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>> No UHD Devices Found
>>
>> But, if  I pass the command soon after the first invocation, it works as
>> shown below:
>>
>> uhd_find_devices --args="addr=xx.xx.xxx.xx"
>> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 31D09D8
>>     addr: xx.xx.xxx.xx
>>     name:
>>     type: usrp2
>>
>> And, subsequent invocations in the near future work.  And, it applies for
>> any other command I have used to invoke the
>> USRP device. I would greatly appreciate suggestions from experienced
>> users in this list.  And, one more issue, the above command used to work
>> without passing the "addr" argument. But recently, it doesn't respond if I
>> don't pass that argument.
>>
>> I would greatly appreciate suggestions on these two points.
>>
>> Thanks.
>>
>> Best,
>> Dev
>>
>>
>> augment your device string with type=n2xx
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000a5c87c05b2bd5fdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Neel,<div><br></div><div>Thanks for th=
e reply, I tried the suggestion:=C2=A0</div><div><br></div><div>=C2=A0 <i>=
=C2=A0augment your device string with=C2=A0<span class=3D"gmail-il">type</s=
pan>=3D<span class=3D"gmail-il">n2xx</span></i></div><div><i><br></i></div>=
<div>And this is what I get:=C2=A0</div><div><br></div><div><i>uhd_find_dev=
ices --args=3D&quot;type=3Dn200&quot;<br>No UHD Devices Found</i></div><div=
><br></div><div>Thanks.</div><div><br></div><div>Best,<br><div><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div style=3D"margin:0px;padding:0px;border:0p=
x;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calib=
ri,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><span st=
yle=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:in=
herit;font-weight:inherit;font-stretch:inherit;font-size:large;line-height:=
inherit;font-family:Arial,Helvetica,sans-serif;vertical-align:baseline;colo=
r:rgb(34,34,34)">Dev Joshi, PhD</span><span style=3D"margin:0px;padding:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;font-size:14pt;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(102,102,102)"><b></b></span><span style=3D"=
margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;colo=
r:inherit"><br></span></div><div style=3D"margin:0px;padding:0px;border:0px=
;font-stretch:inherit;font-size:12pt;line-height:inherit;font-family:Calibr=
i,Arial,Helvetica,sans-serif;vertical-align:baseline;color:black"><div styl=
e=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline=
;color:inherit"><span style=3D"margin:0px;padding:0px;border:0px;font:inher=
it;vertical-align:baseline;color:rgb(102,102,102)">Postdoctoral Research As=
sociate</span></div><div style=3D"margin:0px;padding:0px;border:0px;font:in=
herit;vertical-align:baseline;color:inherit"><span style=3D"margin:0px;padd=
ing:0px;border:0px;font:inherit;vertical-align:baseline;color:rgb(102,102,1=
02)">Department of Physics and Engineering</span></div><div style=3D"margin=
:0px;padding:0px;border:0px;font:inherit;vertical-align:baseline;color:inhe=
rit"><span style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical=
-align:baseline;color:rgb(102,102,102)">The University of Scranto</span><sp=
an style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:b=
aseline;color:rgb(102,102,102)">n</span></div><div style=3D"margin:0px;padd=
ing:0px;border:0px;font:inherit;vertical-align:baseline;color:inherit"><spa=
n style=3D"margin:0px;padding:0px;border:0px;font:inherit;vertical-align:ba=
seline;color:rgb(102,102,102)">C:</span><span style=3D"margin:0px;padding:0=
px;border:0px;font:inherit;vertical-align:baseline;color:inherit">=C2=A0617=
 775 9712</span></div></div></div></div></div></div></div></div></div></div=
></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Oct 27, 2020 at 10:10 AM Neel Pandeya &lt;<a=
 href=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div style=3D"font-family:verdana,sans-serif">Hello Dev Joshi:<br><br>I=
s the N200 directly connected to the host computer?<br><br>What are the IP =
addresses and netmask of the host and the N200? Do you have a gateway addre=
ss configured?<br><br>Earlier, Marcus suggested trying to augment your devi=
ce string with &quot;type=3Dn2xx&quot;. Did you try that?<br clear=3D"all">=
</div><div style=3D"font-family:verdana,sans-serif"><br></div><div><div dir=
=3D"ltr"><div dir=3D"ltr"><font face=3D"verdana, sans-serif">--Neel Pandeya=
</font><div><br></div><div><br></div></div></div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Oct 2020 =
at 17:20, Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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

--000000000000a5c87c05b2bd5fdc--


--===============3438896434031931060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3438896434031931060==--

