Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CE2523CEB
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 20:55:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C4D2384482
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 14:55:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652295318; bh=qnMy9sWvMAZ8ljs6fsI3trdylk0dwckRTTC7MOAR+dY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=j+Hey28QP6s/vZ8HZfuUN902/QkmUrmDXbtZilkei9b1/irHzmFOSPuzlV9rp7n43
	 mu7KVXn37GmUUhIMvQqu5mZX2Nic6IYA3TPriwyiBbcIJZccCFsTgxn1C7ZdQQd/+i
	 v8pAHFUkVhSgh4oWcVeMbhluOiL2KxY1jeumzPRZXyuOrWD8243rXeZToCs7bx2Nqy
	 K9iy3wSrsXOFOxuwsIC0jqPu7cHXH+jEaOeTHplJpw0IUfF/Dj7D141JPl6WOfiff2
	 E35ikmHjYcvbWNYyqfB8369Bn3PwttLVTkNpm64+ELy9GfHhsplCwfT1Hvhf+CWHqO
	 xKEVjgc4lZEjQ==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 98EDE38431D
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 14:54:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lSwJhuh2";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id g3so1438135qtb.7
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 11:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ZUSfuJAbUk0kUr6YSExzwimCIbdAASfN6+V9eVJYYxQ=;
        b=lSwJhuh2LWvG4oli3Of3Z0oBmzjBrP6r44i8pmnbw+PEBiyUXnmBU62N0BgcBT938t
         1m/2WLNOZgk12Nc6qe7ZmB33TaWvlyDRLjX7Ai1cx08GaBuiagg1Upd1fqHT9D2ZRXRT
         ZLK67VDh2UTK6n0lWqwWthGcmmog9D1CSbcGkaxKJPiCvsWdTkxJiSJns3la/xivKbCZ
         oywNIHcusI3VxFPHpcB0JnIxA+tuZ31zlZHR0oEPF6oFoWagVtF4dxHwwLPr2NE7BlNf
         h4yV7z4bdkGUfqlThD9Fgd7C13XTy9NJWHcnt9cPbeTC8cDW86XMOvcHfRKnCbB4MPBM
         RsMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ZUSfuJAbUk0kUr6YSExzwimCIbdAASfN6+V9eVJYYxQ=;
        b=czXsGHNm5iREYADBUJ9TKaDDkCnlQYrhSu9NKRktQnOvjliVOCbkU2dxHl9Pq3Ivu+
         eMebKPhqNi1PQZ18WQCzxW+DdeYbKsvh0DOvgiA/+izFVG5Rt75sUCPRSQGPNhTRUL2j
         4WfTP0rEjZjhFYYq8YLz77vyzpKmw/6bHmZAJNvxeGdbLeyLoFHOVdIsE1ztHPG2zjt8
         woorsPcBMkXdbZ04aEwiaRhLhb++ZL6ik0owV39Mr/W7rmx3oTUsnTG1Hj7JIk2yd8KA
         iUoXU3SyS96DO3AnTeAPjJ6yhWvIQNXKqartwZ/wV07W6tZtMLZKvw8FLrv990IT78Wu
         XSkw==
X-Gm-Message-State: AOAM530q3PBjxCnrc85i+Fpw8hP0xqO/D/oQAmExbnqbj3mB5BPY9pwM
	tIUq+FWNDFPVSsFSHskkmQXk1gaAfyA=
X-Google-Smtp-Source: ABdhPJxJDipukVbopl8KPQfmOzSYX+323D7pjxwBI8poEmj4W0NHE64P5EZUZe6cv81fWTK87LLxzw==
X-Received: by 2002:ac8:5d8e:0:b0:2f3:ced4:3333 with SMTP id d14-20020ac85d8e000000b002f3ced43333mr20953046qtx.524.1652295256846;
        Wed, 11 May 2022 11:54:16 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id m20-20020a05620a13b400b006a00fabde68sm1645109qki.10.2022.05.11.11.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 11:54:16 -0700 (PDT)
Message-ID: <c20f56be-97d7-26dc-014f-fa5828627e96@gmail.com>
Date: Wed, 11 May 2022 14:54:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: discuss-gnuradio@gnu.org,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1652294738824.26535@unibw.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1652294738824.26535@unibw.de>
Message-ID-Hash: VPGRLYN4QJBEWVIS4U3JLCG3MLSJR472
X-Message-ID-Hash: VPGRLYN4QJBEWVIS4U3JLCG3MLSJR472
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC, UHD4.0
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VPGRLYN4QJBEWVIS4U3JLCG3MLSJR472/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1212198012017969008=="

This is a multi-part message in MIME format.
--===============1212198012017969008==
Content-Type: multipart/alternative;
 boundary="------------WBLweUXX7pqgDOusCY9MgxJA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WBLweUXX7pqgDOusCY9MgxJA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-11 14:45, Dobler, Anton wrote:
>
> Dear Community,
>
>
> I try to set up a basic flowgraph in GRC consisting out of a null=20
> source, a tx streamer and DUC and a TX radio.
>
>
> I use UHD4.0 and GR3.8.2.
>
>
> However, I get the following error message:
>
>
> /RuntimeError: RuntimeError: Error during RPC call to `init'. Error=20
> message: RuntimeError: Receiver profile out of range RF bandwidth./
>
>
> I tried different settings for sample rate, etc. but still I get that=20
> error. I attached the used flowgraph.
>
>
>
>
> The second question is with regards to the default fpga images. When I=20
> download the images I get the following error:
>
>
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg1_f=
pga_default-g2cba65b.zip!/
> /01137 kB / 01137 kB (100%) e3xx_e310_sg3_fpga_default-g2cba65b.zip/
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg3_f=
pga_default-g2cba65b.zip!/
> /10183 kB / 10183 kB (100%) e3xx_e320_fpga_default-g2cba65b.zip/
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e320_fpga_=
default-g2cba65b.zip!/
> /20729 kB / 20729 kB (100%) n3xx_n310_fpga_default-g2cba65b.zip/
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n310_fpga_=
default-g2cba65b.zip!/
> /14345 kB / 14345 kB (100%) n3xx_n300_fpga_default-g2cba65b.zip/
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n300_fpga_=
default-g2cba65b.zip!/
> /27285 kB / 27285 kB (100%) n3xx_n320_fpga_default-g2cba65b.zip/
> /[ERROR] Downloaded SHA256 does not match manifest for=20
> https://files.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n320_fpga_=
default-g2cba65b.zip!/
>
> What can I do to solve that problem?
>
>
>
> Any help would be more than welcome!
>
>
> Thanks,
>
>
> BR,
>
>
> Anton
>
What type of USRP?=C2=A0 Are you running this on the device itself, or ov=
er a=20
network connection?=C2=A0 If over a network connection, what type of conn=
ection?


The SHA256 errors means that there's a problem with the repository, or=20
that your access to the repository is corrupting files, or they're being=20
corrupted on
 =C2=A0 your system as they arrive.=C2=A0=C2=A0 I haven't *heard* that th=
e repository=20
has any problems for that release of UHD.


--------------WBLweUXX7pqgDOusCY9MgxJA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-11 14:45, Dobler, Anton
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:1652294738824.26535@unibw.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none">p { margin-top: 0px=
; margin-bottom: 0px; }</style>
      <p>Dear Community,<br>
      </p>
      <p><br>
      </p>
      <p>I try to set up a basic flowgraph in GRC consisting out of a
        null source, a tx streamer and DUC and a TX radio.=C2=A0<br>
      </p>
      <p><br>
      </p>
      <p>I use UHD4.0 and GR3.8.2.<br>
      </p>
      <p><br>
      </p>
      <p>However, I get the following error message:<br>
      </p>
      <p><br>
      </p>
      <p><em>RuntimeError: RuntimeError: Error during RPC call to
          `init'. Error message: RuntimeError: Receiver profile out of
          range RF bandwidth.</em><br>
      </p>
      <p><br>
      </p>
      <p>I tried different settings for sample rate, etc. but still I
        get that error. I attached the used flowgraph.<br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>The second question is with regards to the default fpga images.
        When I download the images I get the following error:<br>
      </p>
      <p><br>
      </p>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/e3xx/uhd-2cba65b/e3xx_e310_sg1_fpga_default-g2cba65b.zip">https:=
//files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg1_fpga_defa=
ult-g2cba65b.zip</a>!</em></div>
      <div><em>01137 kB / 01137 kB (100%)
          e3xx_e310_sg3_fpga_default-g2cba65b.zip</em></div>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/e3xx/uhd-2cba65b/e3xx_e310_sg3_fpga_default-g2cba65b.zip">https:=
//files.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e310_sg3_fpga_defa=
ult-g2cba65b.zip</a>!</em></div>
      <div><em>10183 kB / 10183 kB (100%)
          e3xx_e320_fpga_default-g2cba65b.zip</em></div>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/e3xx/uhd-2cba65b/e3xx_e320_fpga_default-g2cba65b.zip">https://fi=
les.ettus.com/binaries/cache/e3xx/uhd-2cba65b/e3xx_e320_fpga_default-g2cb=
a65b.zip</a>!</em></div>
      <div><em>20729 kB / 20729 kB (100%)
          n3xx_n310_fpga_default-g2cba65b.zip</em></div>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/n3xx/uhd-2cba65b/n3xx_n310_fpga_default-g2cba65b.zip">https://fi=
les.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n310_fpga_default-g2cb=
a65b.zip</a>!</em></div>
      <div><em>14345 kB / 14345 kB (100%)
          n3xx_n300_fpga_default-g2cba65b.zip</em></div>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/n3xx/uhd-2cba65b/n3xx_n300_fpga_default-g2cba65b.zip">https://fi=
les.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n300_fpga_default-g2cb=
a65b.zip</a>!</em></div>
      <div><em>27285 kB / 27285 kB (100%)
          n3xx_n320_fpga_default-g2cba65b.zip</em></div>
      <div><em>[ERROR] Downloaded SHA256 does not match manifest for
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/binari=
es/cache/n3xx/uhd-2cba65b/n3xx_n320_fpga_default-g2cba65b.zip">https://fi=
les.ettus.com/binaries/cache/n3xx/uhd-2cba65b/n3xx_n320_fpga_default-g2cb=
a65b.zip</a>!</em></div>
      <div><br>
      </div>
      <div>What can I do to solve that problem?<br>
      </div>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>Any help would be more than welcome!<br>
      </p>
      <p><br>
      </p>
      <p>Thanks,<br>
      </p>
      <p><br>
      </p>
      <p>BR,<br>
      </p>
      <p><br>
      </p>
      <p>Anton=C2=A0<br>
      </p>
    </blockquote>
    What type of USRP?=C2=A0 Are you running this on the device itself, o=
r
    over a network connection?=C2=A0 If over a network connection, what t=
ype
    of connection?<br>
    =C2=A0 <br>
    <br>
    The SHA256 errors means that there's a problem with the repository,
    or that your access to the repository is corrupting files, or
    they're being corrupted on<br>
    =C2=A0 your system as they arrive.=C2=A0=C2=A0 I haven't *heard* that=
 the
    repository has any problems for that release of UHD.<br>
    <br>
    <br>
  </body>
</html>

--------------WBLweUXX7pqgDOusCY9MgxJA--

--===============1212198012017969008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1212198012017969008==--
