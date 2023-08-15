Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F3477D3B8
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 21:59:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6646F384AE3
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 15:59:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692129546; bh=BW4xk0bjYhXTg7x6OqirJZiGZnh7fgO02LHXJIEsk9s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=I0jlkVdlQfh2gtEPNoLIkWialZ2D1w2yZhJNF422vIXG2yJKz0KTR3biJT0PyG6Ie
	 UuKBie9u9VfGeEv3nv4KaU60iYvof14NOSjaeBILvIm8QkNa3LLI2YULUeQKfE5fgL
	 2gn4bDWmj5WrwDGzk9OGf8gnF0eRDFkzsl4ZPX900gcthzpXGcYn0V1Oduu84iWwzu
	 nxQu7XjIF3r7iKZe8XRdAo3V/ihuAdOF16Ung9jRAhYzRmaKVEMgkvf887RYsiH/Sc
	 4ZcewLFO8O89qdqWKh5EIy2D6SAiSXByAPnTui90AovgAYb2Ae+OAGIGc3AlcPWg4m
	 RvkDF2lNEoKlQ==
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E53A8384ACE
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 15:58:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Va2eqmjm";
	dkim-atps=neutral
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6bd0a96e63dso5017936a34.2
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 12:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692129515; x=1692734315;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ttcUERZAVM26SR+73uvlGcv3arRKAiZ4beAI8LS/Z5A=;
        b=Va2eqmjmmtf051T/gTDFzlM8BvcIGpAZsnpYVGkFkANhSaZ3bfe9F8xC+1inXQndyy
         LaSYndNjlndFuCr82uC0N0UYTUWt0xo9e2n4bG6Xo+7mgRGoc3OYiwwq5jY7PyO69RW8
         L/3YG0FG+qofyzw3Xk8G+zGh2RrtiDeswk6Dsh7+7vzIMWb0fkW7tIlKbQFWU5fReYbn
         MWbF95ErtmlpTM6NnAttQwMRdq1umomnATdqsFlBpzn7awqCMakJ9QOoFflv78dH5Yub
         fJjFGu5Kskdlc6lysBfIJG7p0L/eAS2gVh0kbVkQfiEESa2ZjcFsBX6j/1xyyOAGqR8H
         f4mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692129515; x=1692734315;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ttcUERZAVM26SR+73uvlGcv3arRKAiZ4beAI8LS/Z5A=;
        b=M4alM+EHyQ2/nHk8kHeHFj9BKuVNtwP/ewz05IgVDH1WOQHyW3SSTpoC9z+EB+goua
         dEt8WIt7U2OKVQ8y4OzidhFxmF4qiAbb1fgUSFCSIOHWU//+KniT5sUM0NZHUe1U4nuh
         56rkfPABscPipj7HNXlPx51zZrxDWLOxSIdkyPsvxfrCaH5D7q7CLg7tlBC5C0Z4sBae
         zFzClh92bUCWlS5ddaH9/1EA2MtMw3WGYKqLRaXi0VlOtsgjMvxSKaTFzXWGx3uEKy0T
         Aa1VdUWfaPL4He8igollBETHQBstKYub6ER7o6beZ/4dQAZs5w2nBPYfcxoTN7kjUKsO
         vMYA==
X-Gm-Message-State: AOJu0Yx3PwA6hYdfYZEvl+195z8VayEo6hK22pxYZfUU38gau1dvVkPt
	NeUnaYFfP8TgYM+UuJkz0AUoWHOJaPo=
X-Google-Smtp-Source: AGHT+IGxhe0U9nDwVwzI2fkxM3dmZPwFewR46Z+5drrAEGcJSQKe0LqPgD+jN+GtZiApqXe+RCRZ3g==
X-Received: by 2002:a05:6830:4c4:b0:6b9:1af7:48c5 with SMTP id s4-20020a05683004c400b006b91af748c5mr12972581otd.9.1692129514914;
        Tue, 15 Aug 2023 12:58:34 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id f24-20020a0caa98000000b00631fea4d5bcsm4415274qvb.95.2023.08.15.12.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 12:58:34 -0700 (PDT)
Message-ID: <f8ea7117-f814-5c34-86aa-bc8893984da9@gmail.com>
Date: Tue, 15 Aug 2023 15:58:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Michelle Salehi <herrmlm@hotmail.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <LV3P220MB1054879CBBCDC948F78CF922AE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
 <683124aa-2b30-8397-d89b-9b103ff8f7c8@gmail.com>
 <LV3P220MB1054FE9556901835093CCC4EAE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <LV3P220MB1054FE9556901835093CCC4EAE14A@LV3P220MB1054.NAMP220.PROD.OUTLOOK.COM>
Message-ID-Hash: TVBK6IQN7M2WTIROMCCOLBQS54XJO766
X-Message-ID-Hash: TVBK6IQN7M2WTIROMCCOLBQS54XJO766
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help with FPGA update and running GNU Radio
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVBK6IQN7M2WTIROMCCOLBQS54XJO766/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7646184975356765281=="

This is a multi-part message in MIME format.
--===============7646184975356765281==
Content-Type: multipart/alternative;
 boundary="------------cbkF13AmSuwW4HzyGb5kPSsx"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cbkF13AmSuwW4HzyGb5kPSsx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/08/2023 15:55, Michelle Salehi wrote:
> Hi, this is what I get when I run uhd_usrp_probe.=C2=A0 Thanks for your=
 help!
>
> msalehi@invariant-corp.net@LTL0341-MS:~$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.4.0.0-265-ga2a04e31
> [INFO] [X300] X300 initialization sequence...
> Error: RuntimeError: Expected FPGA compatibility number 39.0, but got=20
> 36.0:
> The FPGA image on your device is not compatible with this host code bui=
ld.
> Download the appropriate FPGA images for this version of UHD.
> Please run:
>
> =C2=A0"/usr/local/lib/uhd/utils/uhd_images_downloader.py"
>
> Then burn a new image to the on-board flash storage of your
> USRP X3xx device using the image loader utility. Use this command:
>
> "/usr/local/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.=
40.2"
>
> For more information, refer to the UHD manual:
>
> http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
>
> -----------------------------------------------------------------------=
-
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, August 15, 2023 2:52 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: Help with FPGA update and running GNU Radio
> On 15/08/2023 15:48, Michelle Salehi wrote:
>>
>> Hi, the ettus x310 I am using ran fine 6 months ago.I just powered it=20
>> on today and my computer was having problems connecting to it.It=20
>> could ping and be seen in uhd_find_devices but got errors when I=20
>> would do uhd_usrp_probe.So, I went through the steps of updating the=20
>> FPGA.Now when I try and run my GNU Radio code, I get the following=20
>> error even after I ran the uhd_images_downloader and=20
>> "/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2"=
=C2=A0 Any=20
>> help would be appreciated.=C2=A0 Thank you!
>>
>>
>> Michelle
>>
>> Executing: /usr/bin/python3 -u=20
>> /home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU Radio=20
>> Files/awgnTwoChannels.py
>>
>>
>> [INFO] [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;=20
>> UHD_3.15.0.0-2build5
>> [INFO] [X300] X300 initialization sequence...
>> Traceback (most recent call last):
>> File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU=20
>> Radio Files/awgnTwoChannels.py"=20
>> <mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadio=
Files/awgnTwoChannels.py>,=20
>> line 466, in <module>
>> =C2=A0 main()
>> File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU=20
>> Radio Files/awgnTwoChannels.py"=20
>> <mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadio=
Files/awgnTwoChannels.py>,=20
>> line 444, in main
>> =C2=A0 tb =3D top_block_cls()
>> File "/home/msalehi@invariant-corp.net/Desktop/Freq Noise GUI/GNU=20
>> Radio Files/awgnTwoChannels.py"=20
>> <mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNURadio=
Files/awgnTwoChannels.py>,=20
>> line 142, in __init__
>> =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(
>> RuntimeError: RuntimeError: Expected FPGA compatibility number 36,=20
>> but got 39:
>> The FPGA image on your device is not compatible with this host code=20
>> build.
>> Download the appropriate FPGA images for this version of UHD.
>> Please run:
>>
>> =C2=A0"/usr/lib/uhd/utils/uhd_images_downloader.py"
>>
>> Then burn a new image to the on-board flash storage of your
>> USRP X3xx device using the image loader utility. Use this command:
>>
>> "/usr/bin/uhd_image_loader" --args=3D"type=3Dx300,addr=3D192.168.40.2"
>>
>> For more information, refer to the UHD manual:
>>
>> http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash=20
>> <http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com  <mailto:usrp-use=
rs@lists.ettus.com>
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com  <mail=
to:usrp-users-leave@lists.ettus.com>
> After running the image downloader/loader, and power-cycling the X310,=20
> what does uhd_usrp_probe return?=C2=A0 Include all the
> =C2=A0 output, including the header that shows versions.
>
>
Yup, so your Gnu Radio application has been linked against UHD 3.15.=C2=A0=
=20
You have a "mixed" system here--note the
 =C2=A0 header:

[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
UHD_4.4.0.0-265-ga2a04e31


And then the "uhd_usrp_probe" in this case is expecting 39, but got 36,=20
because your "image loader/downloader" is linked
 =C2=A0 against UHD 3.15, but other bits of your system (including=20
uhd_usrp_probe) are linked against UHD 4.4.


--------------cbkF13AmSuwW4HzyGb5kPSsx
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/08/2023 15:55, Michelle Salehi
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:LV3P220MB1054FE9556901835093CCC4EAE14A@LV3P220MB1054.NAMP220.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Hi, this is what I get when I run uhd_usrp_probe.=C2=A0 Thanks fo=
r
        your help!</div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:msalehi@inva=
riant-corp.net@LTL0341-MS:~$">msalehi@invariant-corp.net@LTL0341-MS:~$</a=
> uhd_usrp_probe
        <div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version
          9.4.0; Boost_107100; UHD_4.4.0.0-265-ga2a04e31</div>
        <div class=3D"ContentPasted0">[INFO] [X300] X300 initialization
          sequence...</div>
        <div class=3D"ContentPasted0">Error: RuntimeError: Expected FPGA
          compatibility number 39.0, but got 36.0:</div>
        <div class=3D"ContentPasted0">The FPGA image on your device is no=
t
          compatible with this host code build.</div>
        <div class=3D"ContentPasted0">Download the appropriate FPGA image=
s
          for this version of UHD.</div>
        <div class=3D"ContentPasted0">Please run:</div>
        <div><br class=3D"ContentPasted0">
        </div>
        <div class=3D"ContentPasted0">=C2=A0"/usr/local/lib/uhd/utils/uhd=
_images_downloader.py"</div>
        <div><br class=3D"ContentPasted0">
        </div>
        <div class=3D"ContentPasted0">Then burn a new image to the
          on-board flash storage of your</div>
        <div class=3D"ContentPasted0">USRP X3xx device using the image
          loader utility. Use this command:</div>
        <div><br class=3D"ContentPasted0">
        </div>
        <div class=3D"ContentPasted0">"/usr/local/bin/uhd_image_loader"
          --args=3D"type=3Dx300,addr=3D192.168.40.2"</div>
        <div><br class=3D"ContentPasted0">
        </div>
        <div class=3D"ContentPasted0">For more information, refer to the
          UHD manual:</div>
        <div><br class=3D"ContentPasted0">
        </div>
        <div class=3D"ContentPasted0">=C2=A0<a class=3D"moz-txt-link-free=
text" href=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flas=
h">http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash</a></div>
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Mar=
cus
          D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patc=
hvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
          <b>Sent:</b> Tuesday, August 15, 2023 2:52 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> [USRP-users] Re: Help with FPGA update and
          running GNU Radio</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div class=3D"x_moz-cite-prefix">On 15/08/2023 15:48, Michelle
          Salehi wrote:<br>
        </div>
        <blockquote type=3D"cite">
          <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
          <div class=3D"x_elementToProof"
            style=3D"font-family:Calibri,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <p class=3D"x_x_MsoNormal x_x_elementToProof
              x_x_ContentPasted1 x_ContentPasted0" style=3D"margin:0in;
              font-size:11pt; font-family:Calibri,sans-serif;
              color:rgb(36,36,36); background-color:rgb(255,255,255)">
              Hi, the ettus x310 I am using ran fine 6 months ago.<span
                class=3D"x_ContentPasted0" style=3D"margin:0px">=C2=A0<sp=
an
                  class=3D"x_ContentPasted0">=C2=A0</span></span>I just p=
owered
              it on today and my computer was having problems connecting
              to it.<span class=3D"x_ContentPasted0" style=3D"margin:0px"=
>=C2=A0<span
                  class=3D"x_ContentPasted0">=C2=A0</span></span>It could=
 ping
              and be seen in uhd_find_devices but got errors when I
              would do uhd_usrp_probe.<span class=3D"x_ContentPasted0"
                style=3D"margin:0px">=C2=A0<span class=3D"x_ContentPasted=
0">=C2=A0</span></span>So,
              I went through the steps of updating the FPGA.<span
                class=3D"x_ContentPasted0" style=3D"margin:0px">=C2=A0<sp=
an
                  class=3D"x_ContentPasted0">=C2=A0</span></span>Now when=
 I try
              and run my GNU Radio code, I get the following error even
              after I ran the uhd_images_downloader and
              "/usr/bin/uhd_image_loader"
              --args=3D"type=3Dx300,addr=3D192.168.40.2"=C2=A0 Any help w=
ould be
              appreciated.=C2=A0 Thank you!</p>
            <p class=3D"x_x_MsoNormal x_x_elementToProof
              x_x_ContentPasted1" style=3D"margin:0in; font-size:11pt;
              font-family:Calibri,sans-serif; color:rgb(36,36,36);
              background-color:rgb(255,255,255)">
              <br class=3D"x_ContentPasted0">
            </p>
            <p class=3D"x_x_MsoNormal x_x_elementToProof
              x_x_ContentPasted1 x_ContentPasted0" style=3D"margin:0in;
              font-size:11pt; font-family:Calibri,sans-serif;
              color:rgb(36,36,36); background-color:rgb(255,255,255)">
              Michelle<br class=3D"x_ContentPasted0">
            </p>
            <p class=3D"x_x_MsoNormal x_ContentPasted0" style=3D"margin:0=
in;
              font-size:11pt; font-family:Calibri,sans-serif;
              color:rgb(36,36,36); background-color:rgb(255,255,255)">
              =C2=A0</p>
            <p class=3D"x_x_MsoNormal x_x_elementToProof
              x_x_ContentPasted0 x_ContentPasted0" style=3D"margin:0in;
              font-size:11pt; font-family:Calibri,sans-serif;
              color:rgb(36,36,36); background-color:rgb(255,255,255)">
              Executing: /usr/bin/python3 -u
              /home/msalehi@invariant-corp.net/Desktop/Freq Noise
              GUI/GNU Radio Files/awgnTwoChannels.py</p>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>[INFO]
              [UHD] linux; GNU C++ version 9.2.1 20200304; Boost_107100;
              UHD_3.15.0.0-2build5</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>[INFO]
              [X300] X300 initialization sequence...</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>Traceback
              (most recent call last):</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              File <a class=3D"x_moz-txt-link-rfc2396E"
href=3D"mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNUR=
adioFiles/awgnTwoChannels.py"
                moz-do-not-send=3D"true">
                "/home/msalehi@invariant-corp.net/Desktop/Freq Noise
                GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 466,
              in &lt;module&gt;</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              =C2=A0 main()</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              File <a class=3D"x_moz-txt-link-rfc2396E"
href=3D"mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNUR=
adioFiles/awgnTwoChannels.py"
                moz-do-not-send=3D"true">
                "/home/msalehi@invariant-corp.net/Desktop/Freq Noise
                GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 444,
              in main</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              =C2=A0 tb =3D top_block_cls()</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              File <a class=3D"x_moz-txt-link-rfc2396E"
href=3D"mailto:/home/msalehi@invariant-corp.net/Desktop/FreqNoiseGUI/GNUR=
adioFiles/awgnTwoChannels.py"
                moz-do-not-send=3D"true">
                "/home/msalehi@invariant-corp.net/Desktop/Freq Noise
                GUI/GNU Radio Files/awgnTwoChannels.py"</a>, line 142,
              in __init__</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0
              =C2=A0 self.uhd_usrp_sink_0 =3D uhd.usrp_sink(</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>RuntimeError:
              RuntimeError: Expected FPGA compatibility number 36, but
              got 39:</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>The
              FPGA image on your device is not compatible with this host
              code build.</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>Download
              the appropriate FPGA images for this version of UHD.</div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>Please
              run:</div>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>=C2=A0"/usr/lib/uhd/utils/uhd_images_downloader.py"</div>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>Then
              burn a new image to the on-board flash storage of your</div=
>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>USRP
              X3xx device using the image loader utility. Use this
              command:</div>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>"/usr/bin/uhd_image_loader"
              --args=3D"type=3Dx300,addr=3D192.168.40.2"</div>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <div class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D""=
>For
              more information, refer to the UHD manual:</div>
            <div style=3D""><br class=3D"x_x_ContentPasted0
                x_ContentPasted0">
            </div>
            <span class=3D"x_x_ContentPasted0 x_ContentPasted0" style=3D"=
">=C2=A0<a
href=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash"
originalsrc=3D"http://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_fla=
sh"
shash=3D"MUzAiciCaMU1belH/SZPeBJ1ospa0BMng0JN1VRmD0oJ5iWmC7ohVy182S6xPFJe=
97sDZuTz6+HIziwrXwWwF8jFCM8STmILku/z6JR5MMnSKNst+m+xsjP5S1iBSNhDue5EXYh6y=
nUzERnIuCPWQFFgf3kA7RsCdyXSI7yASO0=3D"
                id=3D"LPlnk919139" class=3D"x_moz-txt-link-freetext
                moz-txt-link-freetext" moz-do-not-send=3D"true">http://fi=
les.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash</a></span><br>
          </div>
          <br>
          <fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
          <pre class=3D"x_moz-quote-pre">________________________________=
_______________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
        </blockquote>
        After running the image downloader/loader, and power-cycling the
        X310, what does uhd_usrp_probe return?=C2=A0 Include all the<br>
        =C2=A0 output, including the header that shows versions.<br>
        <br>
        <br>
      </div>
    </blockquote>
    Yup, so your Gnu Radio application has been linked against UHD
    3.15.=C2=A0 You have a "mixed" system here--note the<br>
    =C2=A0 header:<br>
    <br>
    [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
    UHD_4.4.0.0-265-ga2a04e31<br>
    <br>
    <br>
    And then the "uhd_usrp_probe" in this case is expecting 39, but got
    36, because your "image loader/downloader" is linked<br>
    =C2=A0 against UHD 3.15, but other bits of your system (including
    uhd_usrp_probe) are linked against UHD 4.4.<br>
    <br>
    <br>
  </body>
</html>

--------------cbkF13AmSuwW4HzyGb5kPSsx--

--===============7646184975356765281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7646184975356765281==--
