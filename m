Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B295727A4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 22:48:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AC46383D01
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 16:48:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657658906; bh=V6teui4B7MNqfhj3MO73/vmUgrNEfBf5XFDKLc5Uw64=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cYxBadhVZLpq34+APNXXDzfbeLMSC5PqRbZx/kaorm62ADy5Tr8KsES/UCaVWrUG7
	 +9aIZazHu9MGPQ+5m7f4N3vRbV7X9v85KAA/9swxcZqYWvMyDIu7Jld8wyGePJlD+l
	 ALxB9qzNhZGVWiZVqajYZCLX0Mne/O1pD7Y94Spn9QfsclzA5yZgsWtEZDOx7Nv8HG
	 2UwUdp4AbFc1N1zP8uPv6m1PpyAFPVv4ZfIlUpp5+OrK7cB2h8D+CDVV9+tCt6EXxK
	 DxyQ8J2N7EOB6mLB+qp/P/5cqqAZuYs2BTtsEVluyAemiWmzLCdOYtYGCzLnSV/VZx
	 XGc6elJ8RXCaQ==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 61090383BAA
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 16:46:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NBp1bxq6";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id kh20so3449116qvb.5
        for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 13:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=p6HB/hhQx5pX/0WF9uXTrU+lbggKYO+HDs2f+l05GVw=;
        b=NBp1bxq60Pbj0q3Ok68BMNd2cKWnoxWuCQegf89DKio+GvDZWa8GtBhYRE3XFRhKw5
         mBV57ytufTLfLlMGQMD9wEglsFxAZsB/Wik95++sDbNZ5ecidd6/5OMjFVVe+81SvNkd
         yGf/XN5qJ4j6fTN6Bi6YXzfVbQtwNZBiFMHenr3nvh375iID2r8/TcOKFojjBojOVA8F
         /BKLFhHx6NPo4gU3wFRqd04EJcZ08Am5k7N7vem2VdrOHBsFTOf1PY5BHmXn/kvAORYO
         XTRs84OQqIpraq+kGO07G7qFlJZOiMT1IJLuw4FhIVuWVdrRLz6jw8m1hU72prWHGFlL
         6ATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=p6HB/hhQx5pX/0WF9uXTrU+lbggKYO+HDs2f+l05GVw=;
        b=D5be9uR6C258D8rA/Givd7Qfbp187ryZieTkyri4VYlzZ9VobSm6w1xd2rnv6cz9iU
         EyU2mvMgpej7Wb3CK6XaubZ6YlJ3t8adVBd1U7NsfX72UGbEPnWbHZZXln2rc+IrUFI/
         GCNkkKBXFUC9ukYkBDY3AMMZZuYfuWEfUaPH8zVeunyEnUXotbDD7yWQZpafxmOi45Ta
         CsC0Hx0gmCLUbRRPofJI30j4x/aj4A0WRl81vI2hVdGkGOGCFG/lUDC8ucWVUfnlWn9I
         b/VTIKv79E9uBVBR3XKbB9K/rsDmACYILoPRN8eKl/GGIKC+lCvRFzIIVjszDcVqP6uc
         GXbA==
X-Gm-Message-State: AJIora/qoGuFblTpyYUsjdBHvq48TGCUXvhRado9tLs9oq3NLgTjrgS6
	DWI1S+tlW+XqesbrGMX8IuWyQ/ic7U0=
X-Google-Smtp-Source: AGRyM1s1xMn9hKOfj8nsjAy2ZWZvqBKS6ChcqW4EgX+YYRtJeTzJ8XTNK7v0T1IWj/L5FOJWMs2rrA==
X-Received: by 2002:a05:6214:c4e:b0:473:29d:a40c with SMTP id r14-20020a0562140c4e00b00473029da40cmr19940381qvj.30.1657658801499;
        Tue, 12 Jul 2022 13:46:41 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id s123-20020a372c81000000b006b554958bb1sm9346460qkh.26.2022.07.12.13.46.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 13:46:41 -0700 (PDT)
Message-ID: <968e8d78-de36-33af-25fb-9bdd11a144ab@gmail.com>
Date: Tue, 12 Jul 2022 16:46:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DM4PR12MB6302816C79AB8F4F24E0D8618C869@DM4PR12MB6302.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DM4PR12MB6302816C79AB8F4F24E0D8618C869@DM4PR12MB6302.namprd12.prod.outlook.com>
Message-ID-Hash: GUQI6SAFSVU7UO4TKWJ66HIXCRDTVVJD
X-Message-ID-Hash: GUQI6SAFSVU7UO4TKWJ66HIXCRDTVVJD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200mini no longer recognized
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GUQI6SAFSVU7UO4TKWJ66HIXCRDTVVJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6663059633411562706=="

This is a multi-part message in MIME format.
--===============6663059633411562706==
Content-Type: multipart/alternative;
 boundary="------------PNkzemlbrWhPk3KhnTiwHgLJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PNkzemlbrWhPk3KhnTiwHgLJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-12 14:26, Mark Koenig wrote:
> Hello,
>
> I previously had the B200mini functioning on a Dell laptop I maintain,=20
> however that is no longer the case.=C2=A0 I now get the error message b=
elow=20
> when using find devices or trying to probe it.
>
> No UHD Devices Found
> [ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could=20
> not load firmware:
> EnvironmentError: IOError: ihex_reader::read(): No EOF record found.
>
> OR
>
> [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-44);=20
> Boost_105900; UHD_3.14.1.1-0-g7c0291ad
> [INFO] [B200] Loading firmware image:=20
> /opt/xxxx/7.1/share/uhd/images/usrp_b200_fw.hex...
> [ERROR] [UHD] Device discovery error: EnvironmentError: IOError: Could=20
> not load firmware:
> EnvironmentError: IOError: ihex_reader::read(): No EOF record found.
>
>
> I have seen this exact error on multiple laptops with 2 different=20
> B200mini's and usb cords.=C2=A0 If I plug the B200mini into my desktop=20
> machine, I am able discover and probe the device.
>
> I have done all the udev rules as stated in the notes on each laptop=20
> and desktop machine.
>
> The machines(laptops and desktop) are all running Ubuntu, and the same=20
> docker container with GNURADIO and UHD installed.
>
> uhd_config_info --enabled-components
> Enabled components: LibUHD, LibUHD - C API, LibUHD - Python API,=20
> Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2, X300, N230,=20
> MPMD, N300, N320, E320, OctoClock
>
> I am at a loss as to why this is happening....any help would be=20
> appreciated.
>
> Thanks,
> Mark
>
>
That sounds like the firmware/fpga image is corrupt -- try re-running=20
"uhd_images_downloader".


--------------PNkzemlbrWhPk3KhnTiwHgLJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-12 14:26, Mark Koenig wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DM4PR12MB6302816C79AB8F4F24E0D8618C869@DM4PR12MB6302.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I previously had the B200mini functioning on a Dell laptop I
        maintain, however that is no longer the case.=C2=A0 I now get the
        error message below when using find devices or trying to probe
        it.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        No UHD Devices Found
        <div>[ERROR] [UHD] Device discovery error: EnvironmentError:
          IOError: Could not load firmware:
        </div>
        EnvironmentError: IOError: ihex_reader::read(): No EOF record
        found.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        OR</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        [INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat
        4.8.5-44); Boost_105900; UHD_3.14.1.1-0-g7c0291ad
        <div>[INFO] [B200] Loading firmware image:
          /opt/xxxx/7.1/share/uhd/images/usrp_b200_fw.hex...</div>
        <div>[ERROR] [UHD] Device discovery error: EnvironmentError:
          IOError: Could not load firmware:
        </div>
        <div>EnvironmentError: IOError: ihex_reader::read(): No EOF
          record found.</div>
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I have seen this exact error on multiple laptops with 2
        different B200mini's and usb cords.=C2=A0 If I plug the B200mini =
into
        my desktop machine, I am able discover and probe the device.</div=
>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I have done all the udev rules as stated in the notes on each
        laptop and desktop machine.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        The machines(laptops and desktop) are all running Ubuntu, and
        the same docker container with GNURADIO and UHD installed.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        uhd_config_info --enabled-components
        <div>Enabled components: LibUHD, LibUHD - C API, LibUHD - Python
          API, Examples, Utils, Tests, USB, B100, B200, USRP1, USRP2,
          X300, N230, MPMD, N300, N320, E320, OctoClock</div>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am at a loss as to why this is happening....any help would be
        appreciated.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Thanks,
        <div>Mark</div>
        <br>
      </div>
      <br>
    </blockquote>
    That sounds like the firmware/fpga image is corrupt -- try
    re-running "uhd_images_downloader".<br>
    <br>
    <br>
  </body>
</html>

--------------PNkzemlbrWhPk3KhnTiwHgLJ--

--===============6663059633411562706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6663059633411562706==--
