Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC264556DD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jun 2019 20:17:24 +0200 (CEST)
Received: from [::1] (port=34726 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hfq0N-0004up-Mt; Tue, 25 Jun 2019 14:17:19 -0400
Received: from violet.upc.es ([147.83.2.51]:47188)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1hfq0J-0004my-EU
 for usrp-users@lists.ettus.com; Tue, 25 Jun 2019 14:17:15 -0400
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by violet.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
 x5PIGWt9058992
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Tue, 25 Jun 2019 20:16:33 +0200
Received: from [192.168.1.131] (static.masmovil.com [93.176.146.83] (may be
 forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id x5PIGVPl000586
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO);
 Tue, 25 Jun 2019 20:16:32 +0200
To: Nick Foster <bistromath@gmail.com>
References: <ef1b9d55-f392-7e20-9420-22aa8d15fa27@upc.edu>
 <sig.0079038766.CWXP265MB1143974874542068E9A474C8C1E30@CWXP265MB1143.GBRP265.PROD.OUTLOOK.COM>
 <b217ae97-19d1-2a51-cf6f-a2ae4719c4ff@upc.edu>
 <CA+JMMq9Kej3O_WuSUmWpfaSK_sP4ra8aS8FSPKGRLmF1-eJNoQ@mail.gmail.com>
Message-ID: <15e376a9-abd1-5f06-9a37-9be7317729b0@upc.edu>
Date: Tue, 25 Jun 2019 20:16:32 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CA+JMMq9Kej3O_WuSUmWpfaSK_sP4ra8aS8FSPKGRLmF1-eJNoQ@mail.gmail.com>
Content-Language: es-ES
X-Antivirus: Avast (VPS 190625-2, 06/25/2019), Outbound message
X-Antivirus-Status: Clean
X-Greylist: Delayed for 04:26:50 by milter-greylist-4.3.9 (violet.upc.es
 [147.83.2.51]); Tue, 25 Jun 2019 20:16:33 +0200 (CEST)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Tue, 25 Jun 2019 20:16:32 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.2 at violet
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
From: Adria Amezaga via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Adria Amezaga <adria.amezaga@upc.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2943160967551659478=="
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
--===============2943160967551659478==
Content-Type: multipart/alternative;
 boundary="------------04FACCAE6DC74B35F0655333"
Content-Language: es-ES

This is a multi-part message in MIME format.
--------------04FACCAE6DC74B35F0655333
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks for your help Nick! I will do that.

Best regards,

Adrià

El 6/25/2019 a las 7:10 PM, Nick Foster escribió:
> Yeah, that's the problem. The current RFNoC architecture doesn't allow 
> for two full-rate outputs from a single block, because the two outputs 
> share the same port on the crossbar.
>
> The best solution is to write a custom splitter block which 
> instantiates two noc_shells, and wire them both to the crossbar in 
> rfnoc_ce_auto_inst_x310.v. If you get stuck doing this I can dig up 
> some example code.
>
> Nick
>
> On Tue, Jun 25, 2019 at 6:50 AM Adrià Amézaga via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     Hi Jonas,
>
>     I use the full sampling rate for the TX sweeps since most of the
>     instantaneous bandwidth of the UBX is used.
>
>     Transmitting at these rates over 1Gig Ethernet would not be
>     possible, so I generate them using an RFNoC block inside the FPGA.
>
>     Adrià
>
>     El 6/25/2019 a las 3:22 PM, Jonas Manthey escribió:
>>
>>     Hi,
>>
>>     I cannot answer your question, but out of curiosity: why do you
>>     use a RFNoC? Seems like overkill to me.
>>
>>     Cheers,
>>
>>     Jonas
>>
>>     *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On
>>     Behalf Of *Adria via USRP-users
>>     *Sent:* Dienstag, 25. Juni 2019 15:07
>>     *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>>     *Subject:* [USRP-users] Samples do not get through RFNoC stream
>>     splitter
>>
>>     Dear all,
>>
>>     I am working on an application where I need to transmit a
>>     frequency ramp through two UBX-160 using different carrier
>>     frequencies.
>>
>>     I use a split_stream RFNoC block to copy the samples of a ramp
>>     generator like this:
>>
>>     [Ramp Generator] ---> [Split Stream] --> Radio 0
>>
>>     '-> Radio 1
>>
>>     However, I see no activity on the radio outputs. If I replace the
>>     splitter with, for instance, a DigitalGain block or I remove it,
>>     data is transmitted correctly through any of the two daughterboards.
>>
>>     Here is how I connect the blocks:
>>
>>     /  //Connect DDS sweeper to splitter
>>     graph->connect(dds_src_ctrl->get_block_id(), splitter_id);
>>       //Connect splitter to radios
>>       graph->connect(splitter_id, 0, radio_ctrl_id_b, 0);
>>       graph->connect(splitter_id, 1, radio_ctrl_id_a, 0);/
>>
>>     Any help would be appreciated, thanks!
>>
>>     Image removed by sender.
>>     <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=icon>
>>
>>     	
>>
>>     Virus-free. www.avast.com
>>     <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=emailclient&utm_term=link>
>>
>>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


---
This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

--------------04FACCAE6DC74B35F0655333
Content-Type: multipart/related;
 boundary="------------862B7409C41379859A6D7E8C"


--------------862B7409C41379859A6D7E8C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Thanks for your help Nick! I will do that.</p>
    <p>Best regards,</p>
    <p>Adrià<br>
    </p>
    <div class="moz-cite-prefix">El 6/25/2019 a las 7:10 PM, Nick Foster
      escribió:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+JMMq9Kej3O_WuSUmWpfaSK_sP4ra8aS8FSPKGRLmF1-eJNoQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Yeah, that's the problem. The current RFNoC architecture
          doesn't allow for two full-rate outputs from a single block,
          because the two outputs share the same port on the crossbar.</div>
        <div><br>
        </div>
        <div>The best solution is to write a custom splitter block which
          instantiates two noc_shells, and wire them both to the
          crossbar in rfnoc_ce_auto_inst_x310.v. If you get stuck doing
          this I can dig up some example code.</div>
        <div><br>
        </div>
        <div>Nick<br>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, Jun 25, 2019 at 6:50
          AM Adrià Amézaga via USRP-users &lt;<a
            href="mailto:usrp-users@lists.ettus.com"
            moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor="#FFFFFF">
            <p>Hi Jonas, <br>
            </p>
            <p>I use the full sampling rate for the TX sweeps since most
              of the instantaneous bandwidth of the UBX is used.</p>
            <p>Transmitting at these rates over 1Gig Ethernet would not
              be possible, so I generate them using an RFNoC block
              inside the FPGA.</p>
            <p>Adrià</p>
            <div class="gmail-m_1727830280448490074moz-cite-prefix">El
              6/25/2019 a las 3:22 PM, Jonas Manthey escribió:<br>
            </div>
            <blockquote type="cite">
              <div class="gmail-m_1727830280448490074WordSection1">
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Hi,</span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"> </span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">I
                    cannot answer your question, but out of curiosity:
                    why do you use a RFNoC? Seems like overkill to me.</span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"> </span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Cheers,</span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)">Jonas</span></p>
                <p class="MsoNormal"><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:rgb(31,73,125)"> </span></p>
                <div>
                  <div style="border-color:rgb(225,225,225) currentcolor
                    currentcolor;border-style:solid none
                    none;border-width:1pt medium medium;padding:3pt 0cm
                    0cm">
                    <p class="MsoNormal"><b><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                          lang="EN-US">From:</span></b><span
style="font-size:11pt;font-family:&quot;Calibri&quot;,sans-serif;color:windowtext"
                        lang="EN-US"> USRP-users [<a
                          class="gmail-m_1727830280448490074moz-txt-link-freetext"
href="mailto:usrp-users-bounces@lists.ettus.com" target="_blank"
                          moz-do-not-send="true">mailto:usrp-users-bounces@lists.ettus.com</a>]
                        <b>On Behalf Of </b>Adria via USRP-users<br>
                        <b>Sent:</b> Dienstag, 25. Juni 2019 15:07<br>
                        <b>To:</b> <a
                          class="gmail-m_1727830280448490074moz-txt-link-abbreviated"
                          href="mailto:usrp-users@lists.ettus.com"
                          target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                        <b>Subject:</b> [USRP-users] Samples do not get
                        through RFNoC stream splitter</span></p>
                  </div>
                </div>
                <p class="MsoNormal"> </p>
                <p>Dear all,</p>
                <p>I am working on an application where I need to
                  transmit a frequency ramp through two UBX-160 using
                  different carrier frequencies.</p>
                <p>I use a split_stream RFNoC block to copy the samples
                  of a ramp generator like this:</p>
                <p>[Ramp Generator] ---&gt; [Split Stream] --&gt; Radio
                  0</p>
                <p>                                                                  
                  '-&gt; Radio 1</p>
                <p>However, I see no activity on the radio outputs. If I
                  replace the splitter with, for instance, a DigitalGain
                  block or I remove it, data is transmitted correctly
                  through any of the two daughterboards.</p>
                <p>Here is how I connect the blocks:</p>
                <p><i><span style="font-size:10pt">  //Connect DDS
                      sweeper to splitter<br>
                       
                      graph-&gt;connect(dds_src_ctrl-&gt;get_block_id(),
                      splitter_id);<br>
                        //Connect splitter to radios<br>
                        graph-&gt;connect(splitter_id, 0,
                      radio_ctrl_id_b, 0);<br>
                        graph-&gt;connect(splitter_id, 1,
                      radio_ctrl_id_a, 0);</span></i></p>
                <p>Any help would be appreciated, thanks!</p>
                <div
                  id="gmail-m_1727830280448490074DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2">
                  <p class="MsoNormal"> </p>
                  <table
                    class="gmail-m_1727830280448490074MsoNormalTable"
                    style="border-color:rgb(211,212,222) currentcolor
                    currentcolor;border-style:solid none
                    none;border-width:1pt medium medium" cellpadding="0"
                    border="1">
                    <tbody>
                      <tr>
                        <td style="width:41.25pt;border:medium
                          none;padding:9.75pt 0.75pt 0.75pt" width="58">
                          <p class="MsoNormal"><a
href="https://www.avast.com/sig-email?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient&amp;utm_term=icon"
                              target="_blank" moz-do-not-send="true"><span
                                style="border:1pt solid
                                windowtext;padding:0cm;text-decoration:none"><img
id="gmail-m_1727830280448490074_x0000_i1025"
                                  src="cid:part4.3B8A147E.D96A9E68@upc.edu"
                                  alt="Image removed by sender."
                                  class="" width="46" height="29"
                                  border="0"></span></a></p>
                        </td>
                        <td style="width:352.5pt;border:medium
                          none;padding:9pt 0.75pt 0.75pt" width="473">
                          <p class="MsoNormal"
                            style="line-height:13.5pt"><span
style="font-size:10pt;font-family:&quot;Arial&quot;,sans-serif;color:rgb(65,66,78)">Virus-free.
                              <a
href="https://www.avast.com/sig-email?utm_medium=email&amp;utm_source=link&amp;utm_campaign=sig-email&amp;utm_content=emailclient&amp;utm_term=link"
                                target="_blank" moz-do-not-send="true">
                                <span style="color:rgb(68,83,234)">www.avast.com</span></a>
                            </span></p>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <p class="MsoNormal"><span style="color:windowtext"> </span></p>
                </div>
              </div>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href="mailto:USRP-users@lists.ettus.com" target="_blank"
            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
          <a
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------862B7409C41379859A6D7E8C
Content-Type: image/jpeg;
 name="image001.jpg"
Content-Transfer-Encoding: base64
Content-ID: <part4.3B8A147E.D96A9E68@upc.edu>
Content-Disposition: inline;
 filename="image001.jpg"

/9j/4AAQSkZJRgABAQEAYABgAAD/2wBDAAoHBwgHBgoICAgLCgoLDhgQDg0NDh0VFhEYIx8l
JCIfIiEmKzcvJik0KSEiMEExNDk7Pj4+JS5ESUM8SDc9Pjv/wAALCAAdAC4BAREA/8QAHwAA
AQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQR
BRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RF
RkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ip
qrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/9oACAEB
AAA/APZqKKKKKKKKKKKKKKKKKKKKKKK//9k=
--------------862B7409C41379859A6D7E8C--

--------------04FACCAE6DC74B35F0655333--


--===============2943160967551659478==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2943160967551659478==--

