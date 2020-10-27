Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6847729AF55
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 15:11:06 +0100 (CET)
Received: from [::1] (port=52196 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXPgk-00044i-Vr; Tue, 27 Oct 2020 10:11:02 -0400
Received: from mail-il1-f196.google.com ([209.85.166.196]:43493)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1kXPgg-0003yl-Pd
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 10:10:58 -0400
Received: by mail-il1-f196.google.com with SMTP id k1so1595074ilc.10
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 07:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yt7XmeEvUUCjbByU0OfIP9kjPXxJBesfR+AUrlMy6j0=;
 b=VgfZ7aDffrb/IqCucxkQwW3anICkwxx4CZK5XFulm2rAbZMzxDBNK9abfj112mPsi2
 0qzrReW5qnFuIy03JYJbWshDu5OBNzWFS4uUqu1BzNFtKRyj/zeXFFaLGpty53xRuiGB
 W2rAhM2bDaF/DVRapgWyWL+0VUZSmFNWrjjDs9VWieRtywOrYDjSlr9M8/pcqJgMpSex
 rhFf8VYfPf+hJnZPCOytzAi0KIMP6qYu/fCTdOvbzZhVAe6BTDlEnCgJb5MELiQc3jrA
 7au6OgajVT+Yq4Db2/cFSd7tW9QxcA/R/xku8PAieRPotVrJqMeDq5e9DHPr1DO2xUBp
 BFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yt7XmeEvUUCjbByU0OfIP9kjPXxJBesfR+AUrlMy6j0=;
 b=hoKRVIa+1GrSWzCiHoiyuqp2MmfN7+TPJjYaUk2zrigI/Uoj56uOkq/Hjw2ozVRHM2
 LI7MSc+iMNJEHbplfsRd41U3Dyl0VZ22h+6ULieW6HgYpe7NZ1N4dkDXf8ELRv7ttZZj
 ATH3+6E4QY0YtspLGljkO4J2yBPiQktK5fADweV7tYLztEUrxAWJ+FfqoTN+2zc8yxWE
 +c4RhG+WFjT5t3U9ZM2Sclk4gNjHN9FiJ2u1jsvmjdgTJ58z75LrBMaiSeKyGt+2i8S5
 4x+ABuLkMQ1bWk9C1/+s4tNjuNcl1RmkzZbfTBiV+1s0GRnEYU2gOsOnqlRNzjxO6N3T
 6fqA==
X-Gm-Message-State: AOAM531gMSU1OMdorFbEPSlOshzekGk4iaDu7vk1CmbHqf1G9zkYJf7a
 xKqtqODOh2EOsCKIf6pj4iB/USpBa51OHMGP2gYIvnG/
X-Google-Smtp-Source: ABdhPJwrwigx4lv0XTHGL4Ca1udNc4uq2qJOr+LoCCZvKSgb3V+BrDAPbKotzHrswXql6c/PV7f7mgqRorTH4YAHtVM=
X-Received: by 2002:a92:c885:: with SMTP id w5mr1400988ilo.20.1603807818139;
 Tue, 27 Oct 2020 07:10:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAAq7Emf908sc+rSn87GEy7g6itEiT_PDTfM2y9yv2De=793zjA@mail.gmail.com>
 <5F8E10F2.4060907@gmail.com>
In-Reply-To: <5F8E10F2.4060907@gmail.com>
Date: Tue, 27 Oct 2020 09:09:41 -0500
Message-ID: <CACaXmv9AZeMpu5FViJgfm23Qt7+Y1L15yKdKoC1nUCnwboPyag@mail.gmail.com>
To: Dev Joshi <joshide@bc.edu>
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============3227840861805215077=="
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

--===============3227840861805215077==
Content-Type: multipart/alternative; boundary="00000000000049e24205b2a79bec"

--00000000000049e24205b2a79bec
Content-Type: text/plain; charset="UTF-8"

Hello Dev Joshi:

Is the N200 directly connected to the host computer?

What are the IP addresses and netmask of the host and the N200? Do you have
a gateway address configured?

Earlier, Marcus suggested trying to augment your device string with
"type=n2xx". Did you try that?

--Neel Pandeya



On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 10/19/2020 05:32 PM, Dev Joshi via USRP-users wrote:
>
> Hello everyone,
>
> I hope everyone is keeping well through these unusual times. I am writing
> to request assistance on an issue I am facing while running Ettus N200
> device. The  device is installed to receive high frequency radio waves and
> it is connected to an internet port by an Ethernet cable  as is the
> computer (Ubuntu). I can ping the device from the terminal of the computer.
> But, whenever I invoke the USRP N200 using any command, it doesn't work as
> shown below :
>
> uhd_find_devices --args="addr=xx.xx.xxx.xx"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> No UHD Devices Found
>
> But, if  I pass the command soon after the first invocation, it works as
> shown below:
>
> uhd_find_devices --args="addr=xx.xx.xxx.xx"
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_3.15.0.HEAD-0-gaea0e2de
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 31D09D8
>     addr: xx.xx.xxx.xx
>     name:
>     type: usrp2
>
> And, subsequent invocations in the near future work.  And, it applies for
> any other command I have used to invoke the
> USRP device. I would greatly appreciate suggestions from experienced users
> in this list.  And, one more issue, the above command used to work without
> passing the "addr" argument. But recently, it doesn't respond if I don't
> pass that argument.
>
> I would greatly appreciate suggestions on these two points.
>
> Thanks.
>
> Best,
> Dev
>
>
> augment your device string with type=n2xx
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000049e24205b2a79bec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Dev Joshi:<br><br>Is the N200 directly connected to the h=
ost computer?<br><br>What are the IP addresses and netmask of the host and =
the N200? Do you have a gateway address configured?<br><br>Earlier, Marcus =
suggested trying to augment your device string with &quot;type=3Dn2xx&quot;=
. Did you try that?<br clear=3D"all"></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif"><br></div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><f=
ont face=3D"verdana, sans-serif">--Neel Pandeya</font><div><br></div><div><=
br></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Mon, 19 Oct 2020 at 17:20, Marcus D. Leech vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
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

--00000000000049e24205b2a79bec--


--===============3227840861805215077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3227840861805215077==--

