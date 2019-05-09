Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1BC19218
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 21:04:44 +0200 (CEST)
Received: from [::1] (port=51854 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOoLT-00044i-WF; Thu, 09 May 2019 15:04:44 -0400
Received: from resqmta-po-11v.sys.comcast.net ([96.114.154.170]:42742)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <w6rz@comcast.net>) id 1hOoKv-0003my-I3
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 15:04:39 -0400
Received: from resomta-po-12v.sys.comcast.net ([96.114.154.236])
 by resqmta-po-11v.sys.comcast.net with ESMTP
 id On80hjOehVIRHOoKGhMuf5; Thu, 09 May 2019 19:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1557428608;
 bh=o54mmoA6T2urPym89xIjyyzzS+k6duxKcF8HvaRYrGc=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=vYFF2E1arixYkTOXFSQTJLIM+mcG65I2ayRgeOLXexkkYak1aSFc1py2XyNINuwy0
 iBij9IXr+mz1NhIBw0gijykt0ac+TsHdw2NIZ29m+19E9lhtRhRW7rE3c6HfLFlGLw
 Np8m5dKiPbwNmvy3T9ZxD4x/esJWLxTtcF90Zj0ELdvOVqHU27gsPB9UyhPN2J1joS
 K79Ea+HBjeimu1vL55xtE8ifZIfbPEiVv4gbdBzhKl8nVRIPvjOLCq66tSNzY9yLgz
 kynTIMuyF9cS+fILJsglRffdNRD/09eVoRO3ejEOZYB4Te8tLesXCJZyUqWOvj1XAW
 Q9yOLyoMPOi1g==
Received: from [IPv6:2601:647:4200:ea30:3897:9673:4fbc:5084]
 ([IPv6:2601:647:4200:ea30:3897:9673:4fbc:5084])
 by resomta-po-12v.sys.comcast.net with ESMTPSA
 id OoKEhb0fM3i74OoKFhV2gH; Thu, 09 May 2019 19:03:27 +0000
X-Xfinity-VMeta: sc=0;st=legit
To: usrp-users@lists.ettus.com
References: <003201d505f5$b2dfb770$189f2650$@sysware.com>
 <CAEXYVK4np9o7NAPctbMuoMaJX3xVwgvThf99jQpP1_1g1xMywQ@mail.gmail.com>
 <004a01d505f9$c7b437d0$571ca770$@sysware.com>
 <CAEXYVK6A1rF0xvNNAi5HsBjpVFdfQw=aekVP4OU++Zby9+ov=g@mail.gmail.com>
 <00ba01d50689$0fe41630$2fac4290$@sysware.com>
Message-ID: <8cbae5e7-2ddc-8ed1-15c1-c04141670680@comcast.net>
Date: Thu, 9 May 2019 12:03:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <00ba01d50689$0fe41630$2fac4290$@sysware.com>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Relationship between IQ values,
 gain and noise on B205mini transmitter
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
From: Ron Economos via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ron Economos <w6rz@comcast.net>
Content-Type: multipart/mixed; boundary="===============6285110221231900211=="
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
--===============6285110221231900211==
Content-Type: multipart/alternative;
 boundary="------------2D39A9B1ACA26177559C6ADD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------2D39A9B1ACA26177559C6ADD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

You can use the DTV component in GNU Radio to output a known good OFDM 
signal.

There are many DVB-T2 flow graphs in 
<install_dir>/share/gnuradio/examples/dtv

Try vv009-4kfft.grc. A link to the test input file can be found in 
README.dvbt2.

Depending on which version of UHD you're using, you may have to delete 
the parameter "send_frame_size=65536" in the device address.

You should just start to see distortion at a gain setting over 78.

Ron

On 5/9/19 10:03, Michael Deacon via USRP-users wrote:
>
> I hope this is what you are looking for. Would clipping here be an 
> indication of saturation?
>
> Thanks,
>
> Mike
>
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Wednesday, May 8, 2019 6:11 PM
> *To:* Michael Deacon <michaeld@sysware.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Relationship between IQ values, gain and 
> noise on B205mini transmitter
>
> What does the signal look like in the time domain?
>
> Is it driving the amplifier on the B205mini into saturation?
>
> Brian
>
> On Wed, May 8, 2019 at 7:57 PM Michael Deacon <michaeld@sysware.com 
> <mailto:michaeld@sysware.com>> wrote:
>
>     I added some attenuation. The overload is gone but the condition
>     persists.
>
>     Thanks,
>
>     Mike
>
>     *From:* Brian Padalino <bpadalino@gmail.com
>     <mailto:bpadalino@gmail.com>>
>     *Sent:* Wednesday, May 8, 2019 4:37 PM
>     *To:* Michael Deacon <michaeld@sysware.com
>     <mailto:michaeld@sysware.com>>
>     *Cc:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
>     *Subject:* Re: [USRP-users] Relationship between IQ values, gain
>     and noise on B205mini transmitter
>
>     On Wed, May 8, 2019 at 7:28 PM Michael Deacon via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>         Hello,
>
>         I have a simple transmitter consisting of a file source
>         connected to a USRP sink (attached image radio.png). The file
>         contains interleaved floating point IQ representing a few
>         seconds of LTE. The IQ amplitude values are normalized between
>         +1.0 and -1.0. The sink is configured to 60db, 7.5MHz sample
>         rate, 385MHz center frequency and 5MHz bandwidth. The output
>         looks exactly like the original on a spectrum analyzer (see
>         attached good.jpg). If I turn up the gain on the sink or
>         increase the amplitude of the IQ data I get what looks to be
>         noise on either side of the signal spectrum (see attached
>         bad.jpg). Any idea what is going on here?
>
>     Your bad.jpg picture has the spectrum analyzer saying OLVD.  Try
>     changing your reference level of the spectrum analyzer to be
>     higher so you don't saturate the input of the spectrum analyzer.
>
>     Tell us if that fixes it for you.
>
>     Brian
>

--------------2D39A9B1ACA26177559C6ADD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>You can use the DTV component in GNU Radio to output a known good
      OFDM signal.</p>
    <p>There are many DVB-T2 flow graphs in
      &lt;install_dir&gt;/share/gnuradio/examples/dtv</p>
    <p>Try vv009-4kfft.grc. A link to the test input file can be found
      in README.dvbt2.</p>
    <p>Depending on which version of UHD you're using, you may have to
      delete the parameter "send_frame_size=65536" in the device
      address.</p>
    <p>You should just start to see distortion at a gain setting over
      78.</p>
    <p>Ron</p>
    <div class="moz-cite-prefix">On 5/9/19 10:03, Michael Deacon via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:00ba01d50689$0fe41630$2fac4290$@sysware.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">I hope this is what you are looking for.
          Would clipping here be an indication of saturation?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Mike<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><b>From:</b> Brian Padalino
          <a class="moz-txt-link-rfc2396E" href="mailto:bpadalino@gmail.com">&lt;bpadalino@gmail.com&gt;</a> <br>
          <b>Sent:</b> Wednesday, May 8, 2019 6:11 PM<br>
          <b>To:</b> Michael Deacon <a class="moz-txt-link-rfc2396E" href="mailto:michaeld@sysware.com">&lt;michaeld@sysware.com&gt;</a><br>
          <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          <b>Subject:</b> Re: [USRP-users] Relationship between IQ
          values, gain and noise on B205mini transmitter<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">What does the signal look like in the
            time domain?<o:p></o:p></p>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">Is it driving the amplifier on the
              B205mini into saturation?<o:p></o:p></p>
          </div>
          <div>
            <p class="MsoNormal"><o:p> </o:p></p>
          </div>
          <div>
            <p class="MsoNormal">Brian<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div>
            <p class="MsoNormal">On Wed, May 8, 2019 at 7:57 PM Michael
              Deacon &lt;<a href="mailto:michaeld@sysware.com"
                moz-do-not-send="true">michaeld@sysware.com</a>&gt;
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style="border:none;border-left:solid #CCCCCC
            1.0pt;padding:0in 0in 0in
            6.0pt;margin-left:4.8pt;margin-right:0in">
            <div>
              <div>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                  added some attenuation. The overload is gone but the
                  condition persists.<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Thanks,<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Mike<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"><b>From:</b>
                  Brian Padalino &lt;<a
                    href="mailto:bpadalino@gmail.com" target="_blank"
                    moz-do-not-send="true">bpadalino@gmail.com</a>&gt; <br>
                  <b>Sent:</b> Wednesday, May 8, 2019 4:37 PM<br>
                  <b>To:</b> Michael Deacon &lt;<a
                    href="mailto:michaeld@sysware.com" target="_blank"
                    moz-do-not-send="true">michaeld@sysware.com</a>&gt;<br>
                  <b>Cc:</b> <a
                    href="mailto:usrp-users@lists.ettus.com"
                    target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> Re: [USRP-users] Relationship between
                  IQ values, gain and noise on B205mini transmitter<o:p></o:p></p>
                <p class="MsoNormal"
                  style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                <div>
                  <div>
                    <p class="MsoNormal"
                      style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">On
                      Wed, May 8, 2019 at 7:28 PM Michael Deacon via
                      USRP-users &lt;<a
                        href="mailto:usrp-users@lists.ettus.com"
                        target="_blank" moz-do-not-send="true">usrp-users@lists.ettus.com</a>&gt;
                      wrote:<o:p></o:p></p>
                  </div>
                  <div>
                    <blockquote style="border:none;border-left:solid
                      #CCCCCC 1.0pt;padding:0in 0in 0in
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5.0pt">
                      <div>
                        <div>
                          <p class="MsoNormal"
                            style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Hello,<o:p></o:p></p>
                          <p class="MsoNormal"
                            style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                          <p class="MsoNormal"
                            style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">I
                            have a simple transmitter consisting of a
                            file source connected to a USRP sink
                            (attached image radio.png). The file
                            contains interleaved floating point IQ
                            representing a few seconds of LTE. The IQ
                            amplitude values are normalized between +1.0
                            and -1.0. The sink is configured to 60db,
                            7.5MHz sample rate, 385MHz center frequency
                            and 5MHz bandwidth. The output looks exactly
                            like the original on a spectrum analyzer
                            (see attached good.jpg). If I turn up the
                            gain on the sink or increase the amplitude
                            of the IQ data I get what looks to be noise
                            on either side of the signal spectrum (see
                            attached bad.jpg). Any idea what is going on
                            here?<o:p></o:p></p>
                        </div>
                      </div>
                    </blockquote>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                    </div>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Your
                        bad.jpg picture has the spectrum analyzer saying
                        OLVD.  Try changing your reference level of the
                        spectrum analyzer to be higher so you don't
                        saturate the input of the spectrum analyzer.<o:p></o:p></p>
                    </div>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                    </div>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Tell
                        us if that fixes it for you.<o:p></o:p></p>
                    </div>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto"> <o:p></o:p></p>
                    </div>
                    <div>
                      <p class="MsoNormal"
                        style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">Brian<o:p></o:p></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------2D39A9B1ACA26177559C6ADD--


--===============6285110221231900211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6285110221231900211==--

