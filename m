Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7EF550BD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 15:50:53 +0200 (CEST)
Received: from [::1] (port=44282 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hflq9-00038d-2i; Tue, 25 Jun 2019 09:50:29 -0400
Received: from dash.upc.es ([147.83.2.50]:56593)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1hflq4-0002xm-IP
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 09:50:24 -0400
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by dash.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id x5PDngkJ019292
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Tue, 25 Jun 2019 15:49:43 +0200
Received: from [192.168.2.14] (185-160-170-114.ipv4.xta.cat [185.160.170.114]
 (may be forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id x5PDng4g027617
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
 Tue, 25 Jun 2019 15:49:42 +0200
To: Jonas Manthey <jonas.manthey@u-blox.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <ef1b9d55-f392-7e20-9420-22aa8d15fa27@upc.edu>
 <sig.0079038766.CWXP265MB1143974874542068E9A474C8C1E30@CWXP265MB1143.GBRP265.PROD.OUTLOOK.COM>
Message-ID: <b217ae97-19d1-2a51-cf6f-a2ae4719c4ff@upc.edu>
Date: Tue, 25 Jun 2019 15:49:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <sig.0079038766.CWXP265MB1143974874542068E9A474C8C1E30@CWXP265MB1143.GBRP265.PROD.OUTLOOK.COM>
Content-Language: es-ES
X-Antivirus: Avast (VPS 190624-4, 06/24/2019), Outbound message
X-Antivirus-Status: Clean
X-Greylist: IP, sender and recipient auto-whitelisted, not delayed by
 milter-greylist-4.3.9 (dash.upc.es [147.83.2.50]);
 Tue, 25 Jun 2019 15:49:43 +0200 (CEST)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Tue, 25 Jun 2019 15:49:42 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.2 at dash
X-Virus-Status: Clean
Subject: Re: [USRP-users] Samples do not get through RFNoC stream splitter
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
From: =?utf-8?q?Adri=C3=A0_Am=C3=A9zaga_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?QWRyacOgIEFtw6l6YWdh?= <adria.amezaga@upc.edu>
Content-Type: multipart/mixed; boundary="===============6405070667665013228=="
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

This is a multi-part message in MIME format.
--===============6405070667665013228==
Content-Type: multipart/alternative;
 boundary="------------9843B8FA51133EF093B0567C"
Content-Language: es-ES

This is a multi-part message in MIME format.
--------------9843B8FA51133EF093B0567C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jonas,

I use the full sampling rate for the TX sweeps since most of the 
instantaneous bandwidth of the UBX is used.

Transmitting at these rates over 1Gig Ethernet would not be possible, so 
I generate them using an RFNoC block inside the FPGA.

Adrià

El 6/25/2019 a las 3:22 PM, Jonas Manthey escribió:
>
> Hi,
>
> I cannot answer your question, but out of curiosity: why do you use a 
> RFNoC? Seems like overkill to me.
>
> Cheers,
>
> Jonas
>
> *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On 
> Behalf Of *Adria via USRP-users
> *Sent:* Dienstag, 25. Juni 2019 15:07
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Samples do not get through RFNoC stream splitter
>
> Dear all,
>
> I am working on an application where I need to transmit a frequency 
> ramp through two UBX-160 using different carrier frequencies.
>
> I use a split_stream RFNoC block to copy the samples of a ramp 
> generator like this:
>
> [Ramp Generator] ---> [Split Stream] --> Radio 0
>
> '-> Radio 1
>
> However, I see no activity on the radio outputs. If I replace the 
> splitter with, for instance, a DigitalGain block or I remove it, data 
> is transmitted correctly through any of the two daughterboards.
>
> Here is how I connect the blocks:
>
> /  //Connect DDS sweeper to splitter
>   graph->connect(dds_src_ctrl->get_block_id(), splitter_id);
>   //Connect splitter to radios
>   graph->connect(splitter_id, 0, radio_ctrl_id_b, 0);
>   graph->connect(splitter_id, 1, radio_ctrl_id_a, 0);/
>
> Any help would be appreciated, thanks!
>
> Image removed by sender. 
> <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=icon>
>
> 	
>
> Virus-free. www.avast.com 
> <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=link> 
>
>


---
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

--------------9843B8FA51133EF093B0567C
Content-Type: multipart/related;
 boundary="------------FBB2BEF79C6F8B9566020069"


--------------FBB2BEF79C6F8B9566020069
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Jonas, <br>
    </p>
    <p>I use the full sampling rate for the TX sweeps since most of the
      instantaneous bandwidth of the UBX is used.</p>
    <p>Transmitting at these rates over 1Gig Ethernet would not be
      possible, so I generate them using an RFNoC block inside the FPGA.</p>
    <p>Adrià</p>
    <div class="moz-cite-prefix">El 6/25/2019 a las 3:22 PM, Jonas
      Manthey escribió:<br>
    </div>
    <blockquote type="cite"
cite="mid:sig.0079038766.CWXP265MB1143974874542068E9A474C8C1E30@CWXP265MB1143.GBRP265.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Hi,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">I
            cannot answer your question, but out of curiosity: why do
            you use a RFNoC? Seems like overkill to me.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Cheers,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US">Jonas<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1F497D;mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                  lang="EN-US">From:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                lang="EN-US"> USRP-users
                [<a class="moz-txt-link-freetext" href="mailto:usrp-users-bounces@lists.ettus.com">mailto:usrp-users-bounces@lists.ettus.com</a>]
                <b>On Behalf Of </b>Adria via USRP-users<br>
                <b>Sent:</b> Dienstag, 25. Juni 2019 15:07<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Samples do not get through
                RFNoC stream splitter<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p>Dear all,<o:p></o:p></p>
        <p>I am working on an application where I need to transmit a
          frequency ramp through two UBX-160 using different carrier
          frequencies.<o:p></o:p></p>
        <p>I use a split_stream RFNoC block to copy the samples of a
          ramp generator like this:<o:p></o:p></p>
        <p>[Ramp Generator] ---&gt; [Split Stream] --&gt; Radio 0<o:p></o:p></p>
        <p>                                                                  
          '-&gt; Radio 1<o:p></o:p></p>
        <p>However, I see no activity on the radio outputs. If I replace
          the splitter with, for instance, a DigitalGain block or I
          remove it, data is transmitted correctly through any of the
          two daughterboards.<o:p></o:p></p>
        <p>Here is how I connect the blocks:<o:p></o:p></p>
        <p><i><span style="font-size:10.0pt">  //Connect DDS sweeper to
              splitter<br>
                graph-&gt;connect(dds_src_ctrl-&gt;get_block_id(),
              splitter_id);<br>
                //Connect splitter to radios<br>
                graph-&gt;connect(splitter_id, 0, radio_ctrl_id_b, 0);<br>
                graph-&gt;connect(splitter_id, 1, radio_ctrl_id_a, 0);</span></i><o:p></o:p></p>
        <p>Any help would be appreciated, thanks!<o:p></o:p></p>
        <div id="DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2">
          <p class="MsoNormal"><o:p> </o:p></p>
          <table class="MsoNormalTable"
            style="border:none;border-top:solid #D3D4DE 1.0pt"
            cellpadding="0" border="1">
            <tbody>
              <tr>
                <td style="width:41.25pt;border:none;padding:9.75pt
                  .75pt .75pt .75pt" width="58">
                  <p class="MsoNormal"><a
href="https://www.avast.com/sig-email?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient&amp;utm_term=icon"
                      target="_blank" moz-do-not-send="true"><span
                        style="border:solid windowtext
                        1.0pt;padding:0cm;text-decoration:none"><img
                          id="_x0000_i1025"
                          src="cid:part1.8A92FD8A.E65E3EEA@upc.edu"
                          alt="Image removed by sender." class=""
                          width="46" height="29" border="0"></span></a><o:p></o:p></p>
                </td>
                <td style="width:352.5pt;border:none;padding:9.0pt .75pt
                  .75pt .75pt" width="473">
                  <p class="MsoNormal" style="line-height:13.5pt"><span
style="font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#41424E">Virus-free.
                      <a
href="https://www.avast.com/sig-email?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient&amp;utm_term=link"
                        target="_blank" moz-do-not-send="true">
                        <span style="color:#4453EA">www.avast.com</span></a>
                      <o:p></o:p></span></p>
                </td>
              </tr>
            </tbody>
          </table>
          <p class="MsoNormal"><span style="color:windowtext"><o:p> </o:p></span></p>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------FBB2BEF79C6F8B9566020069
Content-Type: image/jpeg;
 name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part1.8A92FD8A.E65E3EEA@upc.edu>
Content-Disposition: inline;
 filename="image001.jpg"

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/wAALCAAdAC4BAREA/8QAHwAA
AQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQR
BRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RF
RkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ip
qrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/9oACAEB
AAA/APZqKKKKKKKKKKKKKKKKKKKKKKK//9k=
--------------FBB2BEF79C6F8B9566020069--

--------------9843B8FA51133EF093B0567C--


--===============6405070667665013228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6405070667665013228==--

