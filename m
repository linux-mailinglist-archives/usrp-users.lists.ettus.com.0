Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F586B3416
	for <lists+usrp-users@lfdr.de>; Fri, 10 Mar 2023 03:14:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4FCE53848C4
	for <lists+usrp-users@lfdr.de>; Thu,  9 Mar 2023 21:14:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678414470; bh=qjbMPIklvPdBqOh1/VwjJLgpO6K4zwSzpTHYC3aIIHM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LWnorUXIxo8k+YDYXqqVpSsrO3Zs4F989gTel1s4pzVDRyDAsPLt8KwI2atjId4L5
	 JgwF43KuCCvxUnKwL1f494vpMUIPIRa03RZsDwG/Z3qt4leRxGBJ43ViyQzmeBhY4r
	 o080NxoQxj9jfofM8+aWOKznENnrpf/roeDo99MqwOEzfMEumslYXO83Lh3+EAQme/
	 aPbqyQsFYk5rxJ+miV1uawyZb1jivL6lG8DbAe8S6zXM4oVmrnH3tPJBKIuPWowKLZ
	 fmHzODDaumz+UbW14ZW/iCxBPDeU9jp9OpjtHR6Dyntww+TzywbdKe6OkYEnNCcIhR
	 I/B+kROrKl4HA==
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 1D3AF3848AF
	for <usrp-users@lists.ettus.com>; Thu,  9 Mar 2023 21:13:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ROgf/3zh";
	dkim-atps=neutral
Received: by mail-qt1-f181.google.com with SMTP id l13so4353133qtv.3
        for <usrp-users@lists.ettus.com>; Thu, 09 Mar 2023 18:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678414434;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vqKvuknDgNxWTv8UUAHfqQrS31zBg+LBC0hnwzelL1g=;
        b=ROgf/3zhjUPqppHMv0dnKaw9oXhgSIhtmDybIXxtSBzAbw5Pi/QMipAwI6fZXFkcVN
         pUZx+yv5MF/SCPjK0gNk9nZLGqfxNJtvwtn9DsWTAh6NnQyuuTRCGTh/L2rtevp9mC5R
         S1YM1Z7+JePGMcat14S2ujw2PsXi0zCrav65LDnPsB6kuSgZqoLK1MxteoQTMOBUv0qQ
         PzKxmZLpa5kH2PXYFxQA/lDaNtDXvFLjtZrB3W2HYlPEEQTmg4tK4mqiJFxXJBhPEi1q
         /gUkZNKhAaCy2rMPcod3cXE1yDPexNPu1WB8bCN8h4bGWh5ocZyPv+YiKHrjyEmSCaAL
         VpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678414434;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vqKvuknDgNxWTv8UUAHfqQrS31zBg+LBC0hnwzelL1g=;
        b=FXAzk33Q1XgMAy0FpJklNkoLPoTA0HV7nO21ZTIQ7oLEVBNG0+fUA0liIB1cHkMN2y
         yHqBzQtH5z1KoTvpQP3zpgDKGpCO47XTRQqUKNBpa36eun/cuRj4QNzSXQS62cEV6cqZ
         dmHzI60nm++t5RyCF8VEuYMbtIli/6p1DkIk6b1cMvfqCQ/dTm/cJkJy1KspL67zgY/E
         jluJ9xBRdfSrzf3k5h8y/W1y/EJaZvy/AtPoAb765jgAycaAZtUAK9g+Nq4tsMPDXh0T
         E4dthsRRIY1KUo2t0+x3Z8w+PQv/DVnD07CWxJP91/Fa/6iaejtJbA8QdTl1nk1+knq6
         zkYg==
X-Gm-Message-State: AO0yUKUMPh7kI0XaWv3YV2j2rxB2Ud5K8c/AvV8W1khmW6ATPhdJAsCx
	5bU3IkVuy90YthDk63kr1GM=
X-Google-Smtp-Source: AK7set+wJCNARKmgqB/ezIhlpgJ43yPO20abBh+81P7MuTO4Ll7kxYkyVlcmOiAyGSXlVd4OE+uK6w==
X-Received: by 2002:ac8:5790:0:b0:3b4:7efb:36a7 with SMTP id v16-20020ac85790000000b003b47efb36a7mr1205060qta.27.1678414434317;
        Thu, 09 Mar 2023 18:13:54 -0800 (PST)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id p10-20020ac8408a000000b003b869f71eedsm499028qtl.66.2023.03.09.18.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Mar 2023 18:13:54 -0800 (PST)
Message-ID: <203821c8-d451-d6d7-50ac-5760f6a300f9@gmail.com>
Date: Thu, 9 Mar 2023 21:13:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Abhay Samant <abhay.samant@ni.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <SJ0PR04MB832815197030088DB1468B6CEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
 <9d0647bc-b671-3350-a9f0-e5b11106b44a@gmail.com>
 <SJ0PR04MB832895E5D4CE860EB46A057BEBB09@SJ0PR04MB8328.namprd04.prod.outlook.com>
 <2df6d1c3-f428-cf2e-2b76-03b48ceb9fc9@gmail.com>
 <SJ0PR04MB8328D5EE03025F619D245788EBBA9@SJ0PR04MB8328.namprd04.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SJ0PR04MB8328D5EE03025F619D245788EBBA9@SJ0PR04MB8328.namprd04.prod.outlook.com>
Message-ID-Hash: IX6DLZG2TJDTW2ZBDERXDGIROHWUTIWZ
X-Message-ID-Hash: IX6DLZG2TJDTW2ZBDERXDGIROHWUTIWZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error updating fpga image on n320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IX6DLZG2TJDTW2ZBDERXDGIROHWUTIWZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5606592932641613096=="

This is a multi-part message in MIME format.
--===============5606592932641613096==
Content-Type: multipart/alternative;
 boundary="------------n00AlCPHKpysiPKlP9So039U"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------n00AlCPHKpysiPKlP9So039U
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/03/2023 21:09, Abhay Samant wrote:
>
> Hi, any suggestions on how to fi the error that I am seeing while=20
> updating fpga image on n320.
>
> Thank you.
>
I had earlier suggested that you simply do a whole-system image update.

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Updat=
ing_the_files_system_by_writing_the_disk_image


> NI
>
> =09
>
> *Abhay Samant*
> Chief Software Engineer
> Aero/Def/Govt: Systems R&D
>
> =E2=80=8Bni.com <https://www.ni.com/>
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Saturday, March 4, 2023 12:16 PM
> *To:* Abhay Samant <abhay.samant@ni.com>; usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] Re: [USRP-users] Re: Error updating fpga image=20
> on n320
>
> On 04/03/2023 13:09, Abhay Samant wrote:
>
>     Hi Marcus,
>
>     Thank you for your quick response on a Saturday.
>
>     My network profile that I use to connect to USRP was earlier
>     configured to use static address 192.168.10.1, which I had used
>     this IP address with the image loader call.
>
> Normally, 192.168.10.1 is the IP address of your *HOST* computer.
>
>
>     Nevertheless, based on your feedback, I changed the IP address to
>     192.168.10.2 and still get the same error
>
>     uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2,fpga=3DHG"
>
>     [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>     DPDK_19.11; UHD_4.2.0.1-0-g321295fb
>
>     No applicable UHD devices found
>
>     [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a
>     single device
>
>     I can ping to this address successfully. I have also disabled
>     firewall on Ubuntu (sudo disable ufw) based on some other answers
>     that I saw related to same question.
>
>     Abhay Samant, PhD
>
>     Chief Software Engineer =E2=80=93 Aerospace/Defense/Government Busi=
ness
>
>     NI
>     _abhay.samant@ni.com_
>
> You're using the SFP0=C2=A0 port on the N320?
>
> Another way to update it is to simply program an entirely-fresh system=20
> image onto the uSD card:
>
> https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Upd=
ating_the_files_system_by_writing_the_disk_image=20
> <https://urldefense.com/v3/__https:/kb.ettus.com/USRP_N300/N310/N320/N3=
21_Getting_Started_Guide*Updating_the_files_system_by_writing_the_disk_im=
age__;Iw!!FbZ0ZwI3Qg!rnBLJY8WppEF-V2Fl_-xIIRSddQl9Io9e-7wx4eANZpGP6V5ULC6=
mdlDrzaunGZkX0qVp_-5LqnSjq_3EJKdUQ$>
>
> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Ca=
rd#N3xx=20
> <https://urldefense.com/v3/__https:/kb.ettus.com/Writing_the_USRP_File_=
System_Disk_Image_to_a_SD_Card*N3xx__;Iw!!FbZ0ZwI3Qg!rnBLJY8WppEF-V2Fl_-x=
IIRSddQl9Io9e-7wx4eANZpGP6V5ULC6mdlDrzaunGZkX0qVp_-5LqnSjq-ekCiznQ$>
>
>
>
>     -------------------------------------------------------------------=
-----
>
>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* Saturday, March 4, 2023 11:56 AM
>     *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>     <mailto:usrp-users@lists.ettus.com>
>     *Subject:* [EXTERNAL] [USRP-users] Re: Error updating fpga image
>     on n320
>
>     On 04/03/2023 12:52, Abhay Samant wrote:
>
>         Hi,
>
>         I am trying to update fpga image on my n320 on an Ubuntu 20.04
>         machine and I get the following error
>
>         $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.1,fpga=
=3DHG"
>
>         [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
>         DPDK_19.11; UHD_4.2.0.1-0-g321295fb
>
>         No applicable UHD devices found
>
>         [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only supports a
>         single device.
>
>         I have downloaded all the images using uhd_image_downloader
>         command.
>
>         Has anyone else run into the loader only supports a single
>         device error.
>
>         Abhay Samant, PhD
>
>         Chief Software Engineer =E2=80=93 Aerospace/Defense/Government =
Business
>
>         NI
>         _abhay.samant@ni.com_
>
>     Your IP address is almost certainly incorrect -- try=C2=A0=C2=A0 19=
2.168.10.2
>
>
>
>         INTERNAL - NI CONFIDENTIAL
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     INTERNAL - NI CONFIDENTIAL
>
>
> INTERNAL - NI CONFIDENTIAL
>


--------------n00AlCPHKpysiPKlP9So039U
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/03/2023 21:09, Abhay Samant
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB8328D5EE03025F619D245788EBBA9@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.contentpasted0
	{mso-style-name:contentpasted0;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi, any suggestions on how to fi the error
          that I am seeing while updating fpga image on n320.<o:p></o:p><=
/p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>=C2=A0=
</o:p></p>
        </div>
      </div>
    </blockquote>
    I had earlier suggested that you simply do a whole-system image
    update.<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/USRP_N300=
/N310/N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writin=
g_the_disk_image">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_S=
tarted_Guide#Updating_the_files_system_by_writing_the_disk_image</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SJ0PR04MB8328D5EE03025F619D245788EBBA9@SJ0PR04MB8328.namprd04=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <div>
          <table class=3D"MsoNormalTable"
            style=3D"width:337.5pt;border-collapse:collapse" width=3D"450=
"
            cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
            <tbody>
              <tr style=3D"height:75.0pt">
                <td style=3D"width:337.5pt;padding:0in 0in 0in
                  0in;height:75.0pt" width=3D"450" valign=3D"top">
                  <table class=3D"MsoNormalTable"
                    style=3D"width:337.5pt;border-collapse:collapse"
                    width=3D"450" cellspacing=3D"0" cellpadding=3D"0"
                    border=3D"0">
                    <tbody>
                      <tr style=3D"height:75.0pt;mso-height-rule:exactly"=
>
                        <td style=3D"width:75.0pt;padding:0in 0in 0in
                          0in;height:75.0pt;mso-height-rule:exactly"
                          width=3D"100" valign=3D"top">
                          <p class=3D"MsoNormal"
                            style=3D"margin-top:2.25pt;vertical-align:top=
"><span
style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><img
                                style=3D"width:.8333in;height:.8333in"
                                id=3D"_x0000_i1026"
src=3D"https://www.ni.com/content/dam/web/scene7/email/signature/email-si=
g-logo.png"
                                alt=3D"NI" moz-do-not-send=3D"true"
                                width=3D"80" height=3D"80"></span><span
style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><o:p></o:p></span></p>
                        </td>
                        <td style=3D"width:262.5pt;padding:0in 0in 0in
                          0in;height:75.0pt;mso-height-rule:exactly"
                          width=3D"350" valign=3D"top">
                          <p class=3D"MsoNormal"
                            style=3D"margin-bottom:4.5pt;vertical-align:t=
op"><b><span
style=3D"font-size:13.0pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">Abhay
                                Samant</span></b><span
style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black"><br>
                              Chief Software Engineer<br>
                              Aero/Def/Govt: Systems R&amp;D <o:p></o:p><=
/span></p>
                          <p class=3D"MsoNormal"
                            style=3D"vertical-align:top"><span
style=3D"font-size:11.5pt;font-family:&quot;Arial&quot;,sans-serif;color:=
black">=E2=80=8B</span><span
                              style=3D"color:black"><a
                                href=3D"https://www.ni.com/"
                                target=3D"_blank"
                                title=3D"https://www.ni.com"
                                moz-do-not-send=3D"true"><span
                                  style=3D"color:black">ni.com</span></a>
                              <o:p></o:p></span></p>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
            </tbody>
          </table>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Saturday, March 4, 2023 12:16 PM<br>
              <b>To:</b> Abhay Samant <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:abhay.samant@ni.com">&lt;abhay.samant@ni.com&gt;</a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXTERNAL] Re: [USRP-users] Re: Error
              updating fpga image on n320<o:p></o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 04/03/2023 13:09, Abhay Samant wrote:=
<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>Hi
                  Marcus,</span></span><span
                style=3D"font-size:12.0pt;color:black">
                <o:p></o:p></span></p>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black">Thank you for
                  your quick response on a Saturday.<o:p></o:p></span></p=
>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o:p=
></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black">My network
                  profile that I use to connect to USRP was earlier
                  configured to use static address 192.168.10.1, which I
                  had used this IP address with the image loader call.<o:=
p></o:p></span></p>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal">Normally, 192.168.10.1 is the IP address o=
f
          your *HOST* computer.<br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o:p=
></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black">Nevertheless,
                  based on your feedback, I changed the IP address to
                  192.168.10.2 and still get the same error<o:p></o:p></s=
pan></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o:p=
></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black">uhd_image_loader
                  --args "type=3Dn3xx,addr=3D192.168.10.2,fpga=3DHG"
                  <o:p></o:p></span></p>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">[INFO] [UHD]
                    linux; GNU C++ version 9.4.0; Boost_107100;
                    DPDK_19.11; UHD_4.2.0.1-0-g321295fb<o:p></o:p></span>=
</p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">No applicable
                    UHD devices found<o:p></o:p></span></p>
              </div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black">[ERROR] [MPMD
                  IMAGE LOADER] mpmd_image_loader only supports a single
                  device<o:p></o:p></span></p>
            </div>
            <div>
              <p class=3D"MsoNormal" style=3D"background:white"><span
                  style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o:p=
></span></p>
            </div>
            <p class=3D"MsoNormal"><span class=3D"contentpasted0"><span
                  style=3D"font-size:12.0pt;color:black;background:white"=
>I
                  can ping to this address successfully. I have also
                  disabled firewall on Ubuntu (sudo disable ufw) based
                  on some other answers that I saw related to same
                  question.</span></span><span
                style=3D"font-size:12.0pt;color:black"><o:p></o:p></span>=
</p>
          </div>
          <div>
            <div>
              <p class=3D"MsoNormal"><span
                  style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o:p=
></span></p>
            </div>
            <div id=3D"Signature">
              <div>
                <div>
                  <p style=3D"background:white"><span
                      style=3D"color:#201F1E">Abhay Samant, PhD<o:p></o:p=
></span></p>
                  <p style=3D"background:white;text-align:start"><span
                      style=3D"color:#201F1E">Chief Software Engineer =E2=
=80=93
                      Aerospace/Defense/Government Business<o:p></o:p></s=
pan></p>
                  <p style=3D"background:white;text-align:start"><span
                      style=3D"color:#201F1E">NI<br>
                    </span><u><span style=3D"color:blue"><a
                          href=3D"mailto:abhay.samant@ni.com"
                          moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">abhay.samant@ni=
.com</a></span></u><span
                      style=3D"color:#201F1E"><o:p></o:p></span></p>
                  <p class=3D"MsoNormal"><span
                      style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0<=
/o:p></span></p>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
        <p class=3D"MsoNormal">You're using the SFP0=C2=A0 port on the N3=
20?<br>
          <br>
          Another way to update it is to simply program an
          entirely-fresh system image onto the uSD card:<br>
          <br>
          <a
href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/USRP_N300/N310/N3=
20/N321_Getting_Started_Guide*Updating_the_files_system_by_writing_the_di=
sk_image__;Iw!!FbZ0ZwI3Qg!rnBLJY8WppEF-V2Fl_-xIIRSddQl9Io9e-7wx4eANZpGP6V=
5ULC6mdlDrzaunGZkX0qVp_-5LqnSjq_3EJKdUQ$"
            moz-do-not-send=3D"true">https://kb.ettus.com/USRP_N300/N310/=
N320/N321_Getting_Started_Guide#Updating_the_files_system_by_writing_the_=
disk_image</a><br>
          <br>
          <a
href=3D"https://urldefense.com/v3/__https:/kb.ettus.com/Writing_the_USRP_=
File_System_Disk_Image_to_a_SD_Card*N3xx__;Iw!!FbZ0ZwI3Qg!rnBLJY8WppEF-V2=
Fl_-xIIRSddQl9Io9e-7wx4eANZpGP6V5ULC6mdlDrzaunGZkX0qVp_-5LqnSjq-ekCiznQ$"
            moz-do-not-send=3D"true">https://kb.ettus.com/Writing_the_USR=
P_File_System_Disk_Image_to_a_SD_Card#N3xx</a><br>
          <br>
          <br>
          <br>
          <o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <div class=3D"MsoNormal" style=3D"text-align:center"
            align=3D"center">
            <hr width=3D"98%" size=3D"2" align=3D"center">
          </div>
          <div id=3D"divRplyFwdMsg">
            <p class=3D"MsoNormal"><b><span style=3D"color:black">From:</=
span></b><span
                style=3D"color:black"> Marcus D. Leech
                <a href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&gt=
;</a><br>
                <b>Sent:</b> Saturday, March 4, 2023 11:56 AM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
                <a href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true">&lt;usrp-users@lists.ettus.com=
&gt;</a><br>
                <b>Subject:</b> [EXTERNAL] [USRP-users] Re: Error
                updating fpga image on n320</span>
              <o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            </div>
          </div>
          <div>
            <div>
              <p class=3D"MsoNormal">On 04/03/2023 12:52, Abhay Samant
                wrote:<o:p></o:p></p>
            </div>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">Hi,<o:p></o:p>=
</span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">I am trying to
                    update fpga image on my n320 on an Ubuntu 20.04
                    machine and I get the following error<o:p></o:p></spa=
n></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o=
:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">$
                    uhd_image_loader --args
                    "type=3Dn3xx,addr=3D192.168.10.1,fpga=3DHG"<o:p></o:p=
></span></p>
              </div>
              <div>
                <div>
                  <p class=3D"MsoNormal" style=3D"background:white"><span
                      style=3D"font-size:12.0pt;color:black">[INFO] [UHD]
                      linux; GNU C++ version 9.4.0; Boost_107100;
                      DPDK_19.11; UHD_4.2.0.1-0-g321295fb<o:p></o:p></spa=
n></p>
                </div>
                <div>
                  <p class=3D"MsoNormal" style=3D"background:white"><span
                      style=3D"font-size:12.0pt;color:black">No applicabl=
e
                      UHD devices found<o:p></o:p></span></p>
                </div>
                <div>
                  <p class=3D"MsoNormal" style=3D"background:white"><span
                      style=3D"font-size:12.0pt;color:black">[ERROR] [MPM=
D
                      IMAGE LOADER] mpmd_image_loader only supports a
                      single device.<o:p></o:p></span></p>
                </div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o=
:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">I have
                    downloaded all the images using uhd_image_downloader
                    command.<o:p></o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o=
:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black">Has anyone els=
e
                    run into the loader only supports a single device
                    error.<o:p></o:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o=
:p></span></p>
              </div>
              <div>
                <p class=3D"MsoNormal" style=3D"background:white"><span
                    style=3D"font-size:12.0pt;color:black"><o:p>=C2=A0</o=
:p></span></p>
              </div>
              <div>
                <div id=3D"x_Signature">
                  <div>
                    <div>
                      <p style=3D"background:white"><span
                          style=3D"color:#201F1E">Abhay Samant, PhD<o:p><=
/o:p></span></p>
                      <p style=3D"background:white;text-align:start"><spa=
n
                          style=3D"color:#201F1E">Chief Software Engineer
                          =E2=80=93 Aerospace/Defense/Government Business=
<o:p></o:p></span></p>
                      <p style=3D"background:white;text-align:start"><spa=
n
                          style=3D"color:#201F1E">NI<br>
                        </span><u><span style=3D"color:blue"><a
                              href=3D"mailto:abhay.samant@ni.com"
                              moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">abhay.saman=
t@ni.com</a></span></u><span
                          style=3D"color:#201F1E"><o:p></o:p></span></p>
                      <p class=3D"MsoNormal"><span
                          style=3D"font-size:12.0pt;color:black"><o:p>=C2=
=A0</o:p></span></p>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            <p class=3D"MsoNormal">Your IP address is almost certainly
              incorrect -- try=C2=A0=C2=A0 192.168.10.2<br>
              <br>
              <br>
              <br>
              <o:p></o:p></p>
            <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
              <p style=3D"margin:5.0pt;text-align:right" align=3D"right">=
<span
                  style=3D"font-size:10.0pt;color:black">INTERNAL - NI
                  CONFIDENTIAL<o:p></o:p></span></p>
              <p class=3D"MsoNormal"><br>
                <br>
                <o:p></o:p></p>
              <pre>_______________________________________________<o:p></=
o:p></pre>
              <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-user=
s@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
              <pre>To unsubscribe send an email to <a href=3D"mailto:usrp=
-users-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-l=
ink-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
            </blockquote>
            <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <p style=3D"margin:5.0pt;text-align:right" align=3D"right"><spa=
n
              style=3D"font-size:10.0pt;color:black">INTERNAL - NI
              CONFIDENTIAL<o:p></o:p></span></p>
        </blockquote>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <br>
      <p
        style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:=
5pt;"
        align=3D"Right">
        INTERNAL - NI CONFIDENTIAL<br>
      </p>
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------n00AlCPHKpysiPKlP9So039U--

--===============5606592932641613096==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5606592932641613096==--
