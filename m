Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05ABCB3640
	for <lists+usrp-users@lfdr.de>; Mon, 16 Sep 2019 10:14:10 +0200 (CEST)
Received: from [::1] (port=41804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i9m9A-0000oh-Cy; Mon, 16 Sep 2019 04:14:08 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:38688)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wa2el.ali@gmail.com>) id 1i9m96-0000kK-EF
 for USRP-users@lists.ettus.com; Mon, 16 Sep 2019 04:14:04 -0400
Received: by mail-ot1-f48.google.com with SMTP id h17so30961535otn.5
 for <USRP-users@lists.ettus.com>; Mon, 16 Sep 2019 01:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IHE0S+8OWogOkp05NCcTAV0Y9XMkTvLrj5UT7uL9g/Q=;
 b=kRbvjYnwyUNBvL4eHgQHXybKnjJfar191k367i356f6ZqyGkUqdqyZj+2Buyc7rbTL
 vsjAJF5FGbUzOoyd0VNiMwfi4F9LWFweloC3sA0tEMVNrhnEThh0BvfgFxr9neey/2MK
 wuHt6n24AMlPBhJVOOefF9sEYwuTbgx7CwkjlN+Dek8RAwmi3WYIXFZhtRa9ke///jss
 WGECRfhzpQNoC2lVkkUaM5GRjMmXtgKX6/9U6PY7ooC4P6H/mGcHxZl9VESbzE+s1vtc
 RQf567H/xJNJyuEH29Y6KfIBflgr1ZHJSxk6+ge35/hGUN0xlp7vWwPgFHcNuOxcWB3D
 Q2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IHE0S+8OWogOkp05NCcTAV0Y9XMkTvLrj5UT7uL9g/Q=;
 b=Dkm2ya77LVri8sUaxg4nrA+PLepf5qX/aOCv0Yzzd1FhqcDLF91Zwic/Sq04UuXNPl
 AMvX3gsHxwRCDHwl5mY5wYYaVKTz98hrgAFvqORyAS3OYUqpn+ZmFdQ52wDlNLM36fkr
 A7CDlXvAGVDCWwsrVTcovzGDYCvuDu/FNPJj7eREYmrwzFFaSxqn3NbO1W/7QWYCfWAO
 774ASNdJpOTgzLK6vi1mEM9q627ZClQjtPtx8qVLKbFFR+UKRGkRRiEfBFDC2hjkH+EL
 ti+1sf51aFjQE/T6y/CUC7p20e5qkj3VlpyKNgdWi8lWf8yk1FgsZkRnFzlqJNLBcyZ3
 X+EQ==
X-Gm-Message-State: APjAAAWNokgvyQQh5ovovI3kZSnx6teRkpMJL+8xBIWkpfyFNOt7JCBb
 WlXLFIFGL+q+aDlV0AK5ZFe9Zi5w2u3m+8Bh3Ms=
X-Google-Smtp-Source: APXvYqyJznMudFI0UyEGpPYUFLNcR70Dn5PjYh5f5dbjbHWs3lQU3mM9tY2cBBJG3Vr/1xiJa67CkUrtP2Np2r+G4O0=
X-Received: by 2002:a05:6830:453:: with SMTP id
 d19mr827139otc.156.1568621603241; 
 Mon, 16 Sep 2019 01:13:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAOCyOuMCrkq4QrLEHpPFK-K8nRhX-FSTibcHyP5j2iJ4o=9S2g@mail.gmail.com>
 <059c1852-c2bc-c352-0b63-8f2f7e6de861@balister.org>
 <A31D6066-827F-4837-AE6F-8C77E6615147@gmail.com>
 <bd2483ad-ac94-5895-0a82-1a9ae4105cfd@balister.org>
In-Reply-To: <bd2483ad-ac94-5895-0a82-1a9ae4105cfd@balister.org>
Date: Mon, 16 Sep 2019 10:13:12 +0200
Message-ID: <CAOCyOuMoj5wWO6N5=jsXoiu1EkSODNAdgZNmsEcE+TeZzaz6Cg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Subject: Re: [USRP-users] cannot load fpga to b205mini from wandboard
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wael Ali via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wael Ali <wa2el.ali@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============3036222113979233491=="
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

--===============3036222113979233491==
Content-Type: multipart/alternative; boundary="00000000000072c29b0592a72d95"

--00000000000072c29b0592a72d95
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

thanks a lot, I've used external usb hub supplied with external power and
it works.
thanks again, this was very helpful.

On Sun, Sep 15, 2019 at 11:47 PM Philip Balister via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 9/15/19 11:38 AM, Marcus D Leech via USRP-users wrote:
> > My guess is the Wandboard doesn=E2=80=99t supply enough power, so it=E2=
=80=99s getting
> taken off the bus.
> >
> > Might need one of those Y cables to supply external power.
>
> Also a good guess, my pi thing has issues with the b205 also.
>
> Philip
>
> >
> > Sent from my iPhone
> >
> >> On Sep 15, 2019, at 8:09 AM, Philip Balister via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >>
> >>> On 9/15/19 7:55 AM, Wael Ali via USRP-users wrote:
> >>> Dear all,
> >>> please help me with this issue,
> >>>
> >>> I've built a poky distro. with yocto project for wandboard and uhd
> package
> >>> is pre-installed.
> >>>
> >>> the problem is, when I tried to use "uhd_usrp_probe"  with (three
> different
> >>> usrp 205mini) I faced the following error
> >>>
> >>> root@wandboard:~# uhd_usrp_probe
> >>> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-relea=
se
> >>>
> >>> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> >>> -- Detected Device: B205mini
> >>> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin..=
.
> >>> 39%Error: EnvironmentError: IOError: load_fpga: cannot write bitstrea=
m
> to
> >>> FX3 (-4: LIBUSB_ERROR_CODE -4)
> >>
> >> A quick google suggest error -4 is No device, are you sure the USB is
> >> working? Do you seen messages when you insert/remove the b205? What do=
es
> >> ls usb say?
> >>
> >> Philip
> >>
> >>
> >>
> >>> root@wandboard:~# uhd_usrp_probe
> >>> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-relea=
se
> >>>
> >>> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> >>> -- Detected Device: B205mini
> >>> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin..=
.
> >>> 38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstrea=
m
> to
> >>> FX3 (-4: LIBUSB_ERROR_CODE -4)
> >>> root@wandboard:~# uhd_usrp_probe
> >>> linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.000-relea=
se
> >>>
> >>> -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.hex...
> >>> -- Detected Device: B205mini
> >>> -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpga.bin..=
.
> >>> 38%Error: EnvironmentError: IOError: load_fpga: cannot write bitstrea=
m
> to
> >>> FX3 (-4: LIBUSB_ERROR_CODE -4)
> >>>
> >>> As you can see, uhd: 3.10.2
> >>> also, I faced the same problem after re-downloading fpga image from
> ettus
> >>> website
> >>>
> >>> thanks in advance
> >>>
> >>>
> >>> _______________________________________________
> >>> USRP-users mailing list
> >>> USRP-users@lists.ettus.com
> >>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000072c29b0592a72d95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>thanks a lot, I&#39;ve used external usb hub supplied=
 with external power and it works.</div><div>thanks again, this was very he=
lpful.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Sep 15, 2019 at 11:47 PM Philip Balister via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On 9/15/19 11:38 AM, Marcus D Leech via USRP-users wrote:<br>
&gt; My guess is the Wandboard doesn=E2=80=99t supply enough power, so it=
=E2=80=99s getting taken off the bus. <br>
&gt; <br>
&gt; Might need one of those Y cables to supply external power. <br>
<br>
Also a good guess, my pi thing has issues with the b205 also.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; Sent from my iPhone<br>
&gt; <br>
&gt;&gt; On Sep 15, 2019, at 8:09 AM, Philip Balister via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@li=
sts.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On 9/15/19 7:55 AM, Wael Ali via USRP-users wrote:<br>
&gt;&gt;&gt; Dear all,<br>
&gt;&gt;&gt; please help me with this issue,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;ve built a poky distro. with yocto project for wandboard=
 and uhd package<br>
&gt;&gt;&gt; is pre-installed.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; the problem is, when I tried to use &quot;uhd_usrp_probe&quot;=
=C2=A0 with (three different<br>
&gt;&gt;&gt; usrp 205mini) I faced the following error<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; root@wandboard:~# uhd_usrp_probe<br>
&gt;&gt;&gt; linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.00=
0-release<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.=
hex...<br>
&gt;&gt;&gt; -- Detected Device: B205mini<br>
&gt;&gt;&gt; -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpg=
a.bin...<br>
&gt;&gt;&gt; 39%Error: EnvironmentError: IOError: load_fpga: cannot write b=
itstream to<br>
&gt;&gt;&gt; FX3 (-4: LIBUSB_ERROR_CODE -4)<br>
&gt;&gt;<br>
&gt;&gt; A quick google suggest error -4 is No device, are you sure the USB=
 is<br>
&gt;&gt; working? Do you seen messages when you insert/remove the b205? Wha=
t does<br>
&gt;&gt; ls usb say?<br>
&gt;&gt;<br>
&gt;&gt; Philip<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; root@wandboard:~# uhd_usrp_probe<br>
&gt;&gt;&gt; linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.00=
0-release<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.=
hex...<br>
&gt;&gt;&gt; -- Detected Device: B205mini<br>
&gt;&gt;&gt; -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpg=
a.bin...<br>
&gt;&gt;&gt; 38%Error: EnvironmentError: IOError: load_fpga: cannot write b=
itstream to<br>
&gt;&gt;&gt; FX3 (-4: LIBUSB_ERROR_CODE -4)<br>
&gt;&gt;&gt; root@wandboard:~# uhd_usrp_probe<br>
&gt;&gt;&gt; linux; GNU C++ version 7.3.0; Boost_106600; UHD_003.010.002.00=
0-release<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -- Loading firmware image: /usr/share/uhd/images/usrp_b200_fw.=
hex...<br>
&gt;&gt;&gt; -- Detected Device: B205mini<br>
&gt;&gt;&gt; -- Loading FPGA image: /usr/share/uhd/images/usrp_b205mini_fpg=
a.bin...<br>
&gt;&gt;&gt; 38%Error: EnvironmentError: IOError: load_fpga: cannot write b=
itstream to<br>
&gt;&gt;&gt; FX3 (-4: LIBUSB_ERROR_CODE -4)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As you can see, uhd: 3.10.2<br>
&gt;&gt;&gt; also, I faced the same problem after re-downloading fpga image=
 from ettus<br>
&gt;&gt;&gt; website<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; thanks in advance<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank=
">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000072c29b0592a72d95--


--===============3036222113979233491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3036222113979233491==--

