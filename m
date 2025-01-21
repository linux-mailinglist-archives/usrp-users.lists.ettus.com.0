Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44055A185AB
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 20:33:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42F40386207
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 14:33:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737487987; bh=LE1JcRxM5B2u/ktKxkAuIB6UhK2ZdiklrE97i3xtn4o=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=UReD3SQfg7gz70fJ1A9QvF4sgI0w4ZkjGi/yEkwmMNo01G3I8xZgKwPMEF0Yyu7Uk
	 FOpByi963kF5roXW6DmTfUqER8Zw1oKuXszJrqvgcerDcKJO23GeLtL6Ujo3gwaNAs
	 ox9bTvxXj83HxlQJWOMvpEV6h6HUAiVQIP5j07JrTJrqYiyubQakrRnRbS//QAorX+
	 oMXpgcidtSzb0en/K5JkGNbC2bK+2hSjfkYsDbiLJjmUl4hGiyVr90ugUMWs+w8yE5
	 yj5ZqERkY80eo5jKs8DEyrpL8DSsWWC4hXpHfAYtHAdAzN9kOVP5UZSm+DIu5/tCJi
	 m3u3CuibcF4Rg==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D7026385BE0
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 14:32:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FXfRiFcA";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e17d3e92d9so45123086d6.1
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 11:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737487961; x=1738092761; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kAS0VJWXU/8P8oTk3QTVpzbSDvof6ESfbQhAdXbmYn8=;
        b=FXfRiFcAyqldUSgiUdy7YbH1jTH2HpFqVVOf8VrfZ8wWzuMy1j75XOZMUMx8I9n67A
         z5JSVY07Kd9zTLMiqAcuzQWaRusJLNFdh2Zvjou1pF4MDXp8hEYQy9P+bdNBM7akg/G1
         R2btw2A81WKmn14fK4jqQNY9FQCKEhxg5LdugHwMzORNxXoJlqm78npCRKMFvJCTsTpu
         y/GSk32zqmT283PVcI943Dfi7M7dbT9iRgSzGginOQNXzx2W8aUFJqGY6T7BIZgFdmlg
         6cVdKULdUkAEoyQvod/XX3BUNkUVB7xfcErvaNpUh9CJJ/vX597Ba5FKA9ZmvL3fbi4m
         +xrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737487961; x=1738092761;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kAS0VJWXU/8P8oTk3QTVpzbSDvof6ESfbQhAdXbmYn8=;
        b=Z6T/ps6rldav6n6rDaJ1a2LANvjLAwBewbQSKwvMn/qqRFGlAANnMweB+9Nwlu43XL
         +dN7b2tA5gn8yiABjCGbgjOucNsjRTQD+zY2Uz1mWq0wbG48OHf2xNcNkIH19kyi191X
         przr8JNxq4dI4TnQYOxaMpHQZ3IP8+d5nicVpSAIAjVadezVTAWKtRchP7XTYJqYUGG5
         WmPL2cO49z1qZw8FE/U3dam0fiCsic2sD8Fr6ZHgEAGkPEKPrUFeAGcgReujw0vJyXYB
         glI2EScmtiDQ7OttpB8UNpDRkEUF2xnWHSRc/VGSSxC6mCcIPBHS/YfULjalq2pF9rJa
         vPdQ==
X-Gm-Message-State: AOJu0YxKHpd8mQRbz64Omy8d/OJGjoyaaOln7NdGyl8VwBewxXMVcb97
	jKXxLMw58kMkp+5qUzep6xceaPXy3wVv0s8je/1uWkxZC0Z5jJXwrWzhhA==
X-Gm-Gg: ASbGncv1kqAPK70/NCt4IRkCr2WTPp8TIIFzGil7FSFwPdX3CPNkU+JSTkTYxMHiBl+
	9N66qFO+hr4ILh3nj0moBV4yXtBaA38kAr2RZ1MuirTwEMzqgyI+bR0isBRdJ2Wia59vE205LNg
	90oEGfWLIs++00VSm9P+cpHhdeEvMj9v7d+J/HdYKJhTqy7vSEm+M8ZXtHqUA0wIaxAnqRRgScG
	YWrdJDf2mABeS1TLOJVtx2LVe2x4Cic3lzbJgbX/+AlbT6lPjS2mZwnaGKRAHi2flDk7nDO5W/S
	MzdzB1G8L+D5AtvkFU6MyCE4Gvi2ZstNgIrJLbefrd5K+s1505Mk2lbNCvnF1BDDkzLj
X-Google-Smtp-Source: AGHT+IGvLmjMObEv/Bsir85lXCjjBmgMzG210SPenysj1cndX6yII7fcqjEkBPymUPknIlPy/mwawA==
X-Received: by 2002:a05:6214:3d99:b0:6d8:838f:8b54 with SMTP id 6a1803df08f44-6e1b2263771mr306651246d6.39.1737487960856;
        Tue, 21 Jan 2025 11:32:40 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6e1afc0f900sm53926406d6.33.2025.01.21.11.32.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 11:32:40 -0800 (PST)
Message-ID: <39a63f67-3244-45b4-a318-6df2b30abebc@gmail.com>
Date: Tue, 21 Jan 2025 14:32:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <a2248846c3ab40e9b6f0c270dd50563e@h-da.de>
Message-ID-Hash: 5AIKKFFGTJNPMISHFECMFVEMKWPDJ2YE
X-Message-ID-Hash: 5AIKKFFGTJNPMISHFECMFVEMKWPDJ2YE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 RIO Session Initialization Failure (Error code -63150)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5AIKKFFGTJNPMISHFECMFVEMKWPDJ2YE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0302085828934638982=="

This is a multi-part message in MIME format.
--===============0302085828934638982==
Content-Type: multipart/alternative;
 boundary="------------BGjBUt0gh9zw6yrostnDCUoL"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BGjBUt0gh9zw6yrostnDCUoL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/01/2025 09:26, Heinz, Dominik wrote:
>
> I'm experiencing an initialization issue with my Ettus X310 USRP device.
>
> My setup consists of an Ettus X310 connected through a PCIe Card using 
> a Molex cable to my Linux machine.
>
> I'm running Ubuntu with kernel version 6.8.0-51-generic and have 
> installed all the necessary UHD packages on the system.
>
>
> The X310 is properly detected when running |uhd_find_devices|, but 
> attempting to probe the device with |uhd_usrp_probe| results in a RIO 
> session initialization error.
> I attached the error output below.
> What is causing this RIO session initialization failure and how can it 
> be resolved?
>
> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; 
> UHD_4.7.0.0-0ubuntu1~jammy1
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
> serial:
> fpga: HG
> name:
> product: X310
> resource: RIO0
> type: x300
>
> gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; 
> UHD_4.7.0.0-0ubuntu1~jammy1
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile 
> /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx
> Error: RuntimeError: x300_impl: Could not initialize RIO session. 
> Unknown error. (Error code -63150)
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The procedures for making this work are here:

https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie


--------------BGjBUt0gh9zw6yrostnDCUoL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 21/01/2025 09:26, Heinz, Dominik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:a2248846c3ab40e9b6f0c270dd50563e@h-da.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p><span>I'm experiencing an initialization issue with my Ettus
            X310 USRP device.</span></p>
        <p><span><span>My setup consists of an Ettus X310 connected
              through a PCIe Card using a Molex cable to my Linux
              machine.
              <br>
            </span></span></p>
        <p><span><span>I'm running Ubuntu with kernel version
              6.8.0-51-generic and have installed all the necessary UHD
              packages on the system.</span></span></p>
        <p><span><span><br>
            </span></span></p>
        <p><span><span></span></span></p>
        <div>The X310 is properly detected when running <code
class=3D"bg-text-200/5 border border-0.5 border-border-300 text-danger-00=
0 whitespace-pre-wrap rounded-[0.3rem] px-1 py-px text-[0.9rem]">
            uhd_find_devices</code>, but attempting to probe the device
          with <code
class=3D"bg-text-200/5 border border-0.5 border-border-300 text-danger-00=
0 whitespace-pre-wrap rounded-[0.3rem] px-1 py-px text-[0.9rem]">
            uhd_usrp_probe</code> results in a RIO session
          initialization error.</div>
        <div>I attached the error output below.</div>
        <div>What is causing this RIO session initialization failure and
          how can it be resolved?</div>
        <div><br>
        </div>
        <div>
          <div><span style=3D"font-family: Consolas, Courier, monospace;"=
>gnb@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
              uhd_find_devices
            </span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">[I=
NFO]
              [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">--=
------------------------------------------------</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">--
              UHD Device 0</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">--=
------------------------------------------------</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">De=
vice
              Address:</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              serial: </span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              fpga: HG</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              name: </span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              product: X310</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              resource: RIO0</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">=C2=
=A0=C2=A0=C2=A0
              type: x300</span></div>
          <div><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">gn=
b@xgoss-host:~/srsRAN_Project/build4ac5300/apps/gnb$
              uhd_usrp_probe
            </span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">[I=
NFO]
              [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
              UHD_4.7.0.0-0ubuntu1~jammy1</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">[I=
NFO]
              [X300] X300 initialization sequence...</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">[I=
NFO]
              [X300] Connecting to niusrpriorpc at localhost:5444...</spa=
n><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">[I=
NFO]
              [X300] Using LVBITX bitfile
              /usr/share/uhd/images/usrp_x310_fpga_HG.lvbitx</span><br>
            <span style=3D"font-family: Consolas, Courier, monospace;">Er=
ror:
              RuntimeError: x300_impl: Could not initialize RIO session.
              Unknown error. (Error code -63150)</span></div>
          <br>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The procedures for making this work are here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_usrp_x3x0.html#x3x0_hw_pcie">https://files.ettus.com/manual/pag=
e_usrp_x3x0.html#x3x0_hw_pcie</a><br>
    <br>
    <br>
  </body>
</html>

--------------BGjBUt0gh9zw6yrostnDCUoL--

--===============0302085828934638982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0302085828934638982==--
