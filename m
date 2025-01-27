Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 003A1A1D54D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 12:27:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BECE2385C23
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 06:27:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737977270; bh=NzaZSjR2mmqGjLx8M+jd8Dvt4Wt5kHjzDVKW7stJXX8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=K5dZ1nC8cssxYdC52A+8nDFT7hfv2GwvEMQCgQ3tRIkGhht17tsSbjl8HdRMnAy7T
	 BCo5TKlB+Z614jmOCitBmkZjZ38hugkhi+Ijw/AvdqZHeQcdBeaxXlA5CdQdRs6Bcg
	 rybWA0Pu2Z9ZUJxxx6R1ho3jTKfhnhXz1dKPTyuGLqZKIsbIylesLabAcxXlB47I9n
	 A6qyNwwvv6goaPBNEpII226A1Dv0sHGKJcpwK4M3AeI2t0YjYWgdRoBZd1Mjl9Eq/U
	 j3cU09bSqPRYavsxrsEcKAF0GmsxD80PlTiRfC3KKspijRwhvw77BluWCDiKWQqVhQ
	 AploCXXvzfp7A==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id C0916385529
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 06:27:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Dfkr+7lv";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7b6e8814842so486605485a.0
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 03:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737977236; x=1738582036; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zHgQoO49nIcNF3FLB36wqNALeNnZT09yLyPinPJXPeY=;
        b=Dfkr+7lvAUMjpyTiyxHqtpz8fsOExsbtDbzqdcy6V1V+lexR8EfZbAcK4FdNAEKINC
         SHQpX+VbmdKSbeU1qbpa9G+/GxBllHhdfzJSyS59jaR9rkZNt0zr2CIaRtFZu3IMKBW+
         qZL+ntf1A7WMgOZQSEv1vvNa4fAmZVxO7nW68xARm5a5FOlgsImuY33sEfR8hnhpCFpU
         Pst7mCtm9yx/n7m85bcrZ0axmWzoenTtJhN0bT78GmvJg5fejfA4nbtcQU7SXpScIzwW
         nxKL2/EabOufWCC2Nl+ypV735VSykcQTJ4ZNttMhcru2r8mwDz9VxQby+vSwBc8Evenu
         ymuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737977236; x=1738582036;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zHgQoO49nIcNF3FLB36wqNALeNnZT09yLyPinPJXPeY=;
        b=RztxkHkjtGgFMBVaN48dq5kT0/8j3WpvZYikSa6wbPyyD0TM13+ZvKiMjRfdq4uJG6
         4o0sXtzBaZ3WtNNFdwaoviat73sR3VUCRRr4d6M9YlR/iSAg406H3SRl1dwLS4V1gcWw
         mDijD0NrPY9XjITykG4IvvmiXgWgIe97BfUWrw7b/1O4UeNOFC2L4m3v5WhMkxqeCNl3
         aAGIm9UTFzdk9iOF4TbYQCaMf4lbbI2Sfm8YPKNkc6DuB6wxRPuLoSvns7DbY8AGuDUg
         Y1mlEkDl6gveBlwRfLbboqfJT//Wt9PpyDin1YaMqR84Ub98GarqwXB8LDweWvnA853F
         vyzQ==
X-Gm-Message-State: AOJu0YxSG+Ggxyu4ssdsLjzzWl8T7auLieGMV28ufBY4xDJYWFFS4SH3
	huPKq23l4TdPG60ozQshJKE1YN06HjHAGvfWx1FsQbo8l7Svc25llkIcow==
X-Gm-Gg: ASbGncvjnJEXlxAaRrIb2fo2j9Zz0aUMjryxQDVuaWXJD3AK39SEoiylP95RmwS9ddQ
	GqRrmZ/SHr5CQAf70MD7OO+q0iE8AHSf4FKE3fIvwA/tIMnxmIvtL45J9vwTSEVsYg8pnxUPrQi
	PDh/v2uGEFNwsnXsESiJkha4u9Dt6PTaiKvEbOo8oFlIFZLdG52fP63lDAUgd+JDvalhepD3P1P
	p8CBHr19G+wWtdSf7aDtjVcl+eUjMzfCSsYeHckTsN1vX1dlRbcq5JpM+g5i6c31wyscrqtVkOh
	NMGvyqGN/jMs+GXxxYIDHOK5rCzUIXjEGh0j8GlNyKud0owUHCOxwfjucBCntqKqHWcQTH0jtml
	IE5U=
X-Google-Smtp-Source: AGHT+IEk1pZEhaomiuP4nYGuKkciItkK5q7zCNsJui/gBcYugwNslnujz8Rtgt8qJQKEzKFeikiyHw==
X-Received: by 2002:a05:620a:6601:b0:7b6:da92:fcdd with SMTP id af79cd13be357-7be63215d15mr5576270085a.15.1737977233378;
        Mon, 27 Jan 2025 03:27:13 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7be9ae7dc98sm377463185a.15.2025.01.27.03.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 03:27:12 -0800 (PST)
Message-ID: <779a81a5-6669-46b1-9f63-0f6027ee6408@gmail.com>
Date: Mon, 27 Jan 2025 06:27:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Heinz, Dominik" <dominik.heinz@h-da.de>,
 Martin Braun <martin.braun@ettus.com>
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
 <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
 <a82baa39532e4545a88e3eb828100f8e@h-da.de>
 <CAFOi1A5K0wHVMRoeO3B7RL5DgoOsmw_96C7y_L8zz+RBo1SDpA@mail.gmail.com>
 <800ca492ec564e52a9cb1f4f238513f3@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <800ca492ec564e52a9cb1f4f238513f3@h-da.de>
Message-ID-Hash: AIAOMYKC4LBWIQKP2JZIXE5NVQOQWCPU
X-Message-ID-Hash: AIAOMYKC4LBWIQKP2JZIXE5NVQOQWCPU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERN] Re: Re: [EXTERN] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AIAOMYKC4LBWIQKP2JZIXE5NVQOQWCPU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4712136547663787889=="

This is a multi-part message in MIME format.
--===============4712136547663787889==
Content-Type: multipart/alternative;
 boundary="------------VMHhSs5KxkGsOqtsEhg1CYbS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------VMHhSs5KxkGsOqtsEhg1CYbS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/01/2025 04:18, Heinz, Dominik wrote:
> Hello Martin,
> Hello Marcus,
>
> The X310 does not show up as a RIO device, but rather like this:
>
> 4a:00.0 Signal processing controller: National Instruments PXIe/PCIe=20
> Device (rev ff) (prog-if ff)
> =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f
> =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok
> =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok
>
> This seems already problematic (?)
>
> The nisrpriorpc server seems to be running fine:
>
> gnb@xgoss-host:~$ sudo systemctl status niusrpriorpc
> =E2=97=8F niusrpriorpc.service - LSB: National Instruments USRP RIO Ser=
vice
> =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.d/niusrpriorpc; gene=
rated)
> =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) since Mon 2025-01-27 =
09:37:21 CET; 23min ago
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: man:systemd-sysv-generator(8=
)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153252)
> =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.872s
> =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/niusrpriorpc.service
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc --daemon
>
> Jan 27 09:37:21 xgoss-host systemd[1]: Starting LSB: National=20
> Instruments USRP RIO Service...
> Jan 27 09:37:21 xgoss-host systemd[1]: Started LSB: National=20
> Instruments USRP RIO Service.
>
> You also mentioned that the X310 needs to be powered on before the=20
> host system.
> I have of course done this - since to my knowledge hot plugging is not=20
> possible in the case of PCIe.
>
> Running uhd_usrp_probe as root doesn't change anything.
>
> I am okay with trying out the 10GbE instead, but I am not able to=20
> interact with the device that way.
> I can't seem to specify an IP or load a firmware image this way. I trie=
d:
>
> gnb@xgoss-host:~$ uhd_image_loader=20
> --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;=20
> UHD_4.7.0.0-0ubuntu1~jammy1
> No applicable UHD devices found
>
> Any idea how to proceed? Can't seem to get the device running via=20
> PCIe, and via 10GbE I can't interact with the device either.
> I will provide the details in the Github issue shortly.
>
For 10Gbit, you have to use (for the HG image that ships by default) the=20
SFP1 port, and the address is 192.168.40.2

For dual 10Gbit, you have to use the XG image, which results in SFP0=20
having an address of 192.168.30.2, and SFP 1
 =C2=A0 having an address of 192.168.40.2


>
> -----------------------------------------------------------------------=
-
> *From:* Martin Braun <martin.braun@ettus.com>
> *Sent:* Friday, January 24, 2025 12:19:00 PM
> *To:* Heinz, Dominik
> *Cc:* Marcus D. Leech; usrp-users@lists.ettus.com
> *Subject:* [EXTERN] Re: [USRP-users] Re: [EXTERN] Re: X310 RIO Session=20
> Initialization Failure (Error code -63150)
> Dominik,
>
> can you provide as much info as you can here:=20
> https://github.com/EttusResearch/uhd/issues/818?
>
> Like Marcus said, the PCIe interface is not used a lot (except by=20
> LabView users), so if you can use 10 GbE instead I recommend doing=20
> that (that also allows you to do 2x200 Msps streaming, if you have two=20
> ports).
>
> --M
>
> On Wed, Jan 22, 2025 at 2:58=E2=80=AFPM Heinz, Dominik <dominik.heinz@h=
-da.de>=20
> wrote:
>
>     I followed the steps in the guide you linked, - however, I still
>     have the issue.
>
>     The uhd drivers are installed, and the niuspriorpc service is
>     running. However, I still the the RIO session initialization failur=
e.
>
>
>     Anything else I could try? I still don't understand what is the
>     cause for this.
>
>     -------------------------------------------------------------------=
-----
>     *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>     *Sent:* Tuesday, January 21, 2025 8:32:39 PM
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [EXTERN] [USRP-users] Re: X310 RIO Session
>     Initialization Failure (Error code -63150)
>     On 21/01/2025 09:26, Heinz, Dominik wrote:
>>
>>     I'm experiencing an initialization issue with my Ettus X310 USRP
>>     device.
>>
>>     My setup consists of an Ettus X310 connected through a PCIe Card
>>     using a Molex cable to my Linux machine.
>>
>>     I'm running Ubuntu with kernel version 6.8.0-51-generic and have
>>     installed all the necessary UHD packages on the system.
>>
>>
>>     The X310 is properly detected when running |uhd_find_devices|,
>>     but attempting to probe the device with |uhd_usrp_probe| results
>>     in a RIO session initialization error.
>>     I attached the error output below.
>>     What is causing this RIO session initialization failure and how
>>     can it be resolved?
>>
>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>     uhd_find_devices
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>     --------------------------------------------------
>>     -- UHD Device 0
>>     --------------------------------------------------
>>     Device Address:
>>     serial:
>>     fpga: HG
>>     name:
>>     product: X310
>>     resource: RIO0
>>     type: x300
>>
>>     gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
>>     uhd_usrp_probe
>>     [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>     UHD_4.7.0.0-0ubuntu1~jammy1
>>     [INFO] [X300] X300 initialization sequence...
>>     [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>     [INFO] [X300] Using LVBITX bitfile
>>     /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
>>     Error: RuntimeError: x300_impl: Could not initialize RIO session.
>>     Unknown error. (Error code -63150)
>>
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     The procedures for making this work are here:
>
>     https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------VMHhSs5KxkGsOqtsEhg1CYbS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/01/2025 04:18, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:800ca492ec564e52a9cb1f4f238513f3@h-da.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <div>Hello Martin,<br>
          Hello Marcus,<br>
          <br>
          The X310 does not show up as a RIO device, but rather like
          this:<br>
          <br>
          4a:00.0 Signal processing controller: National Instruments
          PXIe/PCIe Device (rev ff) (prog-if ff)<br>
          =C2=A0=C2=A0=C2=A0 !!! Unknown header type 7f<br>
          =C2=A0=C2=A0=C2=A0 Kernel driver in use: niusrpriok<br>
          =C2=A0=C2=A0=C2=A0 Kernel modules: niusrpriok<br>
          <br>
          This seems already problematic (?)<br>
          <br>
          The nisrpriorpc server seems to be running fine:<br>
          <br>
          gnb@xgoss-host:~$ sudo systemctl status niusrpriorpc<br>
          =E2=97=8F niusrpriorpc.service - LSB: National Instruments USRP=
 RIO
          Service<br>
          =C2=A0=C2=A0=C2=A0=C2=A0 Loaded: loaded (/etc/init.d/niusrprior=
pc; generated)<br>
          =C2=A0=C2=A0=C2=A0=C2=A0 Active: active (running) since Mon 202=
5-01-27 09:37:21
          CET; 23min ago<br>
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Docs: <a class=3D"moz-txt-=
link-freetext" href=3D"man:systemd-sysv-generator(8)">man:systemd-sysv-ge=
nerator(8)</a><br>
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tasks: 4 (limit: 153252)<br>
          =C2=A0=C2=A0=C2=A0=C2=A0 Memory: 98.6M<br>
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU: 13.872s<br>
          =C2=A0=C2=A0=C2=A0=C2=A0 CGroup: /system.slice/niusrpriorpc.ser=
vice<br>
          =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =E2=94=94=E2=94=801631 /usr/sbin/niusrpriorpc --daemon<br>
          <br>
          Jan 27 09:37:21 xgoss-host systemd[1]: Starting LSB: National
          Instruments USRP RIO Service...<br>
          Jan 27 09:37:21 xgoss-host systemd[1]: Started LSB: National
          Instruments USRP RIO Service.<br>
          <br>
          You also mentioned that the X310 needs to be powered on before
          the host system.<br>
          I have of course done this - since to my knowledge hot
          plugging is not possible in the case of PCIe.<br>
          <br>
          Running uhd_usrp_probe as root doesn't change anything.<br>
          <br>
          I am okay with trying out the 10GbE instead, but I am not able
          to interact with the device that way.<br>
          I can't seem to specify an IP or load a firmware image this
          way. I tried:<br>
          <br>
          gnb@xgoss-host:~$ uhd_image_loader
          --args=3D"type=3Dx300,addr=3D192.168.10.2,fpga=3DHG"<br>
          [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
          UHD_4.7.0.0-0ubuntu1~jammy1<br>
          No applicable UHD devices found<br>
          <br>
          Any idea how to proceed? Can't seem to get the device running
          via PCIe, and via 10GbE I can't interact with the device
          either.<br>
          I will provide the details in the Github issue shortly.<br>
          <br>
        </div>
      </div>
    </blockquote>
    For 10Gbit, you have to use (for the HG image that ships by default)
    the SFP1 port, and the address is 192.168.40.2<br>
    <br>
    For dual 10Gbit, you have to use the XG image, which results in SFP0
    having an address of 192.168.30.2, and SFP 1<br>
    =C2=A0 having an address of 192.168.40.2<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:800ca492ec564e52a9cb1f4f238513f3@h-da.de">
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <div>
        </div>
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
tin
          Braun <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:martin.=
braun@ettus.com">&lt;martin.braun@ettus.com&gt;</a><br>
          <b>Sent:</b> Friday, January 24, 2025 12:19:00 PM<br>
          <b>To:</b> Heinz, Dominik<br>
          <b>Cc:</b> Marcus D. Leech; <a class=3D"moz-txt-link-abbreviate=
d" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com<=
/a><br>
          <b>Subject:</b> [EXTERN] Re: [USRP-users] Re: [EXTERN] Re:
          X310 RIO Session Initialization Failure (Error code -63150)</fo=
nt>
        <div>=C2=A0</div>
      </div>
      <div>
        <div dir=3D"ltr">
          <div>Dominik,</div>
          <div><br>
          </div>
          <div>can you provide as much info as you can here: <a
              href=3D"https://github.com/EttusResearch/uhd/issues/818"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
              https://github.com/EttusResearch/uhd/issues/818</a>?</div>
          <div><br>
          </div>
          <div>Like Marcus said, the PCIe interface is not used a lot
            (except by LabView users), so if you can use 10 GbE instead
            I recommend doing that (that also allows you to do 2x200
            Msps streaming, if you have two ports).</div>
          <div><br>
          </div>
          <div>--M<br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote gmail_quote_container">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2025 at
            2:58=E2=80=AFPM Heinz, Dominik &lt;<a
              href=3D"mailto:dominik.heinz@h-da.de" moz-do-not-send=3D"tr=
ue"
              class=3D"moz-txt-link-freetext">dominik.heinz@h-da.de</a>&g=
t;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div>
              <div id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                dir=3D"ltr">
                <p>I followed the steps in the guide you linked, -
                  however, I still have the issue.</p>
                <p>The uhd drivers are installed, and the niuspriorpc
                  service is running. However, I still the the RIO
                  session initialization failure.</p>
                <p><br>
                </p>
                <p>Anything else I could try? I still don't understand
                  what is the cause for this.<br>
                </p>
              </div>
              <hr style=3D"display:inline-block;width:98%">
              <div id=3D"m_-810124041727098465divRplyFwdMsg" dir=3D"ltr">=
<font
                  style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                  color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;<br>
                  <b>Sent:</b> Tuesday, January 21, 2025 8:32:39 PM<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  <b>Subject:</b> [EXTERN] [USRP-users] Re: X310 RIO
                  Session Initialization Failure (Error code -63150)</fon=
t>
                <div>=C2=A0</div>
              </div>
              <div>
                <div>On 21/01/2025 09:26, Heinz, Dominik wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div id=3D"m_-810124041727098465divtagdefaultwrapper"
style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sa=
ns-serif"
                    dir=3D"ltr">
                    <p><span>I'm experiencing an initialization issue
                        with my Ettus X310 USRP device.</span></p>
                    <p><span><span>My setup consists of an Ettus X310
                          connected through a PCIe Card using a Molex
                          cable to my Linux machine.
                          <br>
                        </span></span></p>
                    <p><span><span>I'm running Ubuntu with kernel
                          version 6.8.0-51-generic and have installed
                          all the necessary UHD packages on the system.</=
span></span></p>
                    <p><span><span><br>
                        </span></span></p>
                    <p><span><span></span></span></p>
                    <div>The X310 is properly detected when running <code=
>uhd_find_devices</code>,
                      but attempting to probe the device with
                      <code>uhd_usrp_probe</code> results in a RIO
                      session initialization error.</div>
                    <div>I attached the error output below.</div>
                    <div>What is causing this RIO session initialization
                      failure and how can it be resolved?</div>
                    <div><br>
                    </div>
                    <div>
                      <div><span
                          style=3D"font-family:Consolas,Courier,monospace=
">gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
                          uhd_find_devices
                        </span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">[INFO]
                          [UHD] linux; GNU C++ version 11.4.0;
                          Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1</span=
><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">--------------------------------------------------</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">--
                          UHD Device 0</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">--------------------------------------------------</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">Device
                          Address:</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          serial: </span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          fpga: HG</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          name: </span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          product: X310</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          resource: RIO0</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">=C2=A0=C2=A0=C2=A0
                          type: x300</span></div>
                      <div><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
                          uhd_usrp_probe
                        </span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">[INFO]
                          [UHD] linux; GNU C++ version 11.4.0;
                          Boost_107400; UHD_4.7.0.0-0ubuntu1~jammy1</span=
><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">[INFO]
                          [X300] X300 initialization sequence...</span><b=
r>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">[INFO]
                          [X300] Connecting to niusrpriorpc at
                          localhost:5444...</span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">[INFO]
                          [X300] Using LVBITX bitfile
                          /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx<=
/span><br>
                        <span
                          style=3D"font-family:Consolas,Courier,monospace=
">Error:
                          RuntimeError: x300_impl: Could not initialize
                          RIO session. Unknown error. (Error code
                          -63150)</span></div>
                      <br>
                    </div>
                    <br>
                  </div>
                  <br>
                  <fieldset></fieldset>
                  <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.=
com</a>
To unsubscribe send an email to <a
                  href=3D"mailto:usrp-users-leave@lists.ettus.com"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">usrp-users-leave@lists.=
ettus.com</a>
</pre>
                </blockquote>
                The procedures for making this work are here:<br>
                <br>
                <a
href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie"
                  target=3D"_blank" moz-do-not-send=3D"true"
                  class=3D"moz-txt-link-freetext">https://files.ettus.com=
/manual/page_usrp_x3x0.html#x3x0_hw_pcie</a><br>
                <br>
                <br>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
              usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">
              usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------VMHhSs5KxkGsOqtsEhg1CYbS--

--===============4712136547663787889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4712136547663787889==--
