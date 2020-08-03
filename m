Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35323AF92
	for <lists+usrp-users@lfdr.de>; Mon,  3 Aug 2020 23:15:26 +0200 (CEST)
Received: from [::1] (port=49024 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2hnj-0003ZX-Up; Mon, 03 Aug 2020 17:15:19 -0400
Received: from resqmta-po-04v.sys.comcast.net ([96.114.154.163]:60362)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <w6rz@comcast.net>) id 1k2hnf-0003KN-Jl
 for usrp-users@lists.ettus.com; Mon, 03 Aug 2020 17:15:15 -0400
Received: from resomta-po-07v.sys.comcast.net ([96.114.154.231])
 by resqmta-po-04v.sys.comcast.net with ESMTP
 id 2e1HkuMikVNfK2hn0kcpP2; Mon, 03 Aug 2020 21:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
 s=20190202a; t=1596489274;
 bh=zAgWJ6qW4wdvVVOhvA8Ua8OkBaMRqXYhJZ0CQwfQ1Q4=;
 h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
 Content-Type;
 b=0DRN2xeZgMBcME/glvdyI1vNtVrg+FNLoaALaCmtrH8f5X5hNU2TNoy1FXXA6UvqG
 6jDhyi3TIQzVIyfhFkgiAxxRpn1iOWp9br9fmo7L21yaT8f65e5grIPDmmyIUg+7kc
 0n9MbTPUYcBYMdd4Me16ie4LBBNuf90W52uh+i6f84vKEjq9fSUC0Qgy86rge62AY1
 Q0QZTvetFq+NQEXmj8CRcVXiChtZSO9jdIElaJpzWFMbMFu6NnKYnuAr2aG7X/KzPW
 99icx+fw4YFtEN7ckKWjt6JrnjFDjIt/23PlkzWccL3YYA0Ed+lrCB8yVit2gvkLck
 Q8Tbf8jsl48Zw==
Received: from [IPv6:2601:647:4200:ea30:adfa:6e7a:9c80:c854]
 ([IPv6:2601:647:4200:ea30:adfa:6e7a:9c80:c854])
 by resomta-po-07v.sys.comcast.net with ESMTPSA
 id 2hmzkCfSbEZ192hmzkkul2; Mon, 03 Aug 2020 21:14:34 +0000
X-Xfinity-VMeta: sc=0.00;st=legit
To: usrp-users@lists.ettus.com
References: <3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1>
 <5EF15135.6050502@gmail.com> <07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1>
 <5EF2585B.1090909@gmail.com> <274815FD178544A4B80B844E5119AFCD@PC1>
 <4e279601-1428-ff68-ac4b-6889f0f77998@comcast.net>
 <47A975ECF45F43D2A3CFAB47ABFB49FA@PC1>
 <628c90eb-a132-bfed-daee-ed9a30733eda@comcast.net>
 <5362CD13D5E543729D8D7269B3E9961F@PC1>
Message-ID: <9ee306dd-8ad4-3c12-df3f-effbd3f5410c@comcast.net>
Date: Mon, 3 Aug 2020 14:14:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5362CD13D5E543729D8D7269B3E9961F@PC1>
Content-Language: en-US
Subject: Re: [USRP-users] GRC up-grade - installation issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============6181916894760651031=="
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
--===============6181916894760651031==
Content-Type: multipart/alternative;
 boundary="------------49A97F786F73B300120709C7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------49A97F786F73B300120709C7
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On Ubuntu 20.04, you could have just installed pybind11 with apt-get. 
But building from source is fine. BTW, you can reduce the build time of 
pybind11 to zero by adding -DPYBIND11_TEST=OFF to the cmake command line.

Looks like you're missing liborc.

sudo apt-get install liborc-0.4-dev

Ron

On 8/3/20 10:31, David Taylor (manx.net) wrote:
> Ron.
> Many thanks. It was down to permissions. Adding sudo make install 
> completed the pybind11 build process.
> Incidentally, my install paths are /usr/local/include/pybind11/ and 
> /usr/local/share/cmake/pybind11/ ..... .cmake
> Issue now with make at linkage? Compiles up to this point.
> make[2] *** No rule to make target 
> ‘/usr/lib/x86_64-linux-gnu/liborc-0.4.so’, needed by 
> ‘lib/libgnuradio-development.so.v1.0-compat-xxx-xunknown’ Stop
> make[1] *** [CmakeFiles/Makefile2:317: 
> lib/CmakeFiles/gnuradio-development.dir/all] Error 2
> The source code is taken from 3.7.11 , with the include header 
> modified for shared_ptr use.
> David.
> *From:* Ron Economos via USRP-users
> *Sent:* Monday, August 3, 2020 3:36 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] GRC up-grade - installation issues
>
> You don't need to supply a Findpybind11.cmake file. That is already 
> provided by the pybind11 install (take a look in /usr/lib/cmake/pybind11).
>
> Ron
>
> On 8/2/20 10:20, David Taylor (manx.net) wrote:
>> Ron,
>> Thanks again.
>> I have persevered with the GRC 9.0 installation and have followed the 
>> 3.9 OOT module porting guide.
>> pybind11 2.4.3 and the other required dependencies have been 
>> installed. CMake reports all present during configure.
>> A simple C++ OOT under the Workflow instruction produces the correct 
>> binding files under ‘$gr_modtool bind test_cc’
>> CMake configure correctly reported an ‘out of sync error’ before binding.
>> Generate fails to complete with the following CMake error only.
>> CMake Error at 
>> /usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrPybind.cmake:227 
>> (pybind11_add_module):
>>     Unknown CMake command “pybind11_add_module”.
>> Call Stack (most recent call first):
>> python/bindings/CMakeLists.txt:23 (GR_PYBIND_MAKE_OOT)
>> I added my own version of Findpybind11.cmake, which may of course be 
>> contributory.
>> Is there a version of Findpybind11.cmake out there that pairs 
>> specifically with pybind11 2.4.3 or am I missing something 
>> fundamental with modern cmake.
>> VOLKGNSSSDR is pulled successfully in using the old method.
>> Many thanks,
>> David GD4FMB
>> *From:* Ron Economos via USRP-users
>> *Sent:* Sunday, July 26, 2020 3:59 PM
>> *To:* usrp-users@lists.ettus.com
>> *Subject:* Re: [USRP-users] GRC up-grade - installation issues
>>
>> David,
>>
>> You don't need MPIR. The dependency can be resolved with libgmp. 
>> Here's what that portion of my OOT CMake looks like:
>>
>> -- Found LOG4CPP: /usr/lib/x86_64-linux-gnu/liblog4cpp.so
>> -- Found PkgConfig: /usr/bin/pkg-config (found version "0.29.1")
>> -- Checking for module 'gmp'
>> --   No package 'gmp' found
>> -- Found GMP: /usr/lib/x86_64-linux-gnu/libgmpxx.so
>> -- Checking for module 'mpir >= 3.0'
>> --   No package 'mpir' found
>> -- Could NOT find MPIR (missing: MPIRXX_LIBRARY MPIR_LIBRARY 
>> MPIR_INCLUDE_DIR)
>> -- Found MPLIB: /usr/lib/x86_64-linux-gnu/libgmpxx.so
>>
>> If you don't already have it:
>>
>> sudo apt install libgmp-dev
>>
>> For VOLKGNSSSDR, the techniques you used for 3.7.11 should still work 
>> fine.
>>
>> Here's an example of an external library from one of my OOT's.
>>
>> https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L128
>>
>> https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.txt#L38
>>
>> https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Modules/FindPcap.cmake
>>
>> Ron W6RZ
>>
>> On 7/26/20 07:06, David Taylor (manx.net) via USRP-users wrote:
>>>
>>> Apologies if this question is out of scope, or if the answer is to 
>>> be found elsewhere in the history.
>>>
>>> I have been upgrading the GRC from 3.7.11 (with Ubuntu 18.04) to GRC 
>>> 9.0 (with Ubuntu 20.04 LTS). See previous dialogue below, using 
>>> 3.8.1.0~rc12build2
>>>
>>> Currently, the synaptic package manager and $sudo apt install 
>>> gnuradio methods both align on GRC version 9.0. So I have persevered 
>>> at this version.
>>>
>>> UHD is at v 3.15 and with Python3 the package is basically 
>>> functional using an available B210 over USB3.
>>>
>>> --------------
>>>
>>> The problem arises with OOT blocks transfer, CMake in its “modern 
>>> form” and with the new dependency of MPIR.
>>>
>>> 1). MPIR library has been installed independently and built at V3.0 
>>> , with libraries and header located in /usr/local/lib and 
>>> /usr/local/include respectively.
>>>
>>> 2). My 3.7.11 code also uses VOLKGNSSSDR in the build. As with the 
>>> 3.7.11 version, VOLKGNSSSDR was installed and tested independently 
>>> with libraries and headers locatedusing FindVOLKGNSSSDRin 
>>> /cmake/modules and a find package reference added to CMakeLists.txt.
>>>
>>> I have yet to check whether {VOLK_GNSSSDR_LIBRARIES} has to be added 
>>> to the target_link_libraries, noting the significantly different 
>>> approach now used in .. //my_development/lib/CMakeLists.txt
>>>
>>> 3). The standard VOLK library is found in CMake configure as it is 
>>> now part of the v 9.0 build package.
>>>
>>> 4). I have tried adapting the older find package method used in 2) 
>>> for MPIR without success, but note the following CMake configure output.
>>>
>>> MPIRXX_LIBRARY-NOTFOUND
>>>
>>> MPIR_INCLUDE_DIR-NOTFOUND
>>>
>>> MPIR_LIBRARY/usr/local/lib/libmpir.so
>>>
>>> Can anyone help with the MPIR problem please?
>>>
>>> As an OOT build requirement at V 9.0., I would have expected 
>>> expected the gr-modtool to generate some boiler-plate code to cover 
>>> this dependency addition!
>>>
>>> Is there a more elegant and better way of incorporating VOLKGNSSSDR 
>>> and the MPIR libraries using modern CMake?
>>>
>>> Would reversion to 3.8.1 help in the short term, noting  that the 
>>> output from my work might benefit and the later GRC scheduler 
>>> improvements?
>>>
>>> Many thanks.
>>>
>>> David
>>>
>>> GD4FMB
>>>
>>> *From:* Marcus D. Leech via USRP-users
>>> *Sent:* Tuesday, June 23, 2020 8:30 PM
>>> *To:* usrp-users@lists.ettus.com
>>> *Subject:* Re: [USRP-users] GRC up-grade - installation issues
>>> On 06/23/2020 03:23 PM, David Taylor (manx.net) via USRP-users wrote:
>>>> Marcus.
>>>> Many thanks for your prompt reply.
>>>> Complete removal of everything from /usr/share/uhd/images, then 
>>>> running the images-downloader from /usr/bin works fine.
>>>> I have only managed to try this with a B210 as the other 
>>>> transceivers remain in the laboratory under Covid19 university 
>>>> building closure measures.
>>>> The N210 is yet to be used, but thanks for the advising on the 
>>>> particular EEPROM image load method,
>>> OK, so with B2xx, if they already have a loaded FPGA image, they 
>>> won't try to re-load from your host during start-up, unless you
>>>   power-cycle them first.  So, this can result in you having 
>>> upgraded the host side of things, complete with host-resident images,
>>>   and getting a "mis-match" error with B2xx.  The UHD code does NOT 
>>> attempt to re-load the FPGA image if the host side is
>>>   newer than the code resident on the B2xx--only after a power-cycle.
>>>> It was interesting to see the extra console UHD diagnostics, 
>>>> particularly about clock sources and the 1 PPS input.
>>>> I have a Rubidium 10 MHz source and 1PPS generator source that will 
>>>> eventually be incorporated for USRP synchronisation.
>>>> However, I am now in the process of setting up the toolchain and 
>>>> new gr_modtool and transitioning the 3.7x OOT blocks
>>>> The GNU Radio 3.8 OOT Module Porting Guide looks helpful at 16 May 
>>>> 2020.
>>>> The only real issue I had before was to include 
>>>> FindVOLKGNSSSDRcmake and the corresponding library.
>>>> Regards,
>>>> David.
>>>> *From:* Marcus D. Leech via USRP-users
>>>> *Sent:* Tuesday, June 23, 2020 1:47 AM
>>>> *To:* usrp-users@lists.ettus.com
>>>> *Subject:* Re: [USRP-users] GRC up-grade - installation issues
>>>> On 06/22/2020 02:45 PM, David Taylor (manx.net) via USRP-users wrote:
>>>>>
>>>>> Dear all,
>>>>>
>>>>> I have been successfully running a B200/ B210 research project for 
>>>>> two years based on Ubuntu 18.04 LTS and version 3.7x GRC.
>>>>>
>>>>> This includes a number of OOT blocks developed for direct sequence 
>>>>> spread spectrum, using the Volk GNSSSDR library extensions. An 
>>>>> N210 USRP is also at my disposal.
>>>>>
>>>>> I now have a clean upgrade to Ubuntu 20.04 LTS and wish to refresh 
>>>>> the GRC & UHD drivers to the latest stable release, taking best 
>>>>> advice please to ensure project conclusion.
>>>>>
>>>>> The issues:-
>>>>>
>>>>> 1). GRC version 3.8.1.0~rc12build2 works standalone and appears to 
>>>>> have similar Cmake files structure and content. (3.9.0.0 is listed 
>>>>> in the package manager as available, but with significant and 
>>>>> noticeable changes in the software migration and dependencies)?
>>>>>
>>>>> 2). Libuhd-dev at 3.15.0.0-2build5 correctly identifies the B210 
>>>>> over USB3. (I note that library-file libuhd003 no longer forms 
>>>>> part of this package).
>>>>>
>>>>> 3). Running “uhd_images_downloader.py” fully populates 
>>>>> /usr/share/images/.
>>>>>
>>>>> There is an issue with FPGA compatibility, which I have seen 
>>>>> before in 3.7x GRC.  “Expected FPGA compatibility number 16 
>>>>> expected got 14.”
>>>>>
>>>>> This issue was solved under V3.7x simply by replacement of the 
>>>>> FPGA image from archive.
>>>>>
>>>> Is this compatibility issue with your N210 or B2xx?  It isn't clear.
>>>>
>>>>> 4). I have removed all FPGA images from the /usr/share/images 
>>>>> directory and have selectively tried installing a number of 
>>>>> earlier discrete images and boot-loader from the archive, but all 
>>>>> without success.
>>>>>
>>>>> 5). A re-run of the uhd-images-downloader now fails to re-populate 
>>>>> the images folder, however the python(3) script itself runs.
>>>>>
>>>> You might want to simply remove *everything* from 
>>>> /usr/share/uhd/images, and re-run:
>>>>
>>>> sudo uhd_images_downloader.py
>>>>
>>>> [Making certain it's running the version you think it's running--if 
>>>> you installed from pre-packaged, it'll be in /usr/bin]
>>>>
>>>> If this doesn't work, please share the error messages produced with us.
>>>>
>>>>
>>>> Also, because I didn't see anything in your work-log about it, for 
>>>> N210, you have to run:
>>>>
>>>> uhd_image_loader --args addr=<addr-of-n210>,type=n200
>>>>
>>>> This loads the appropriate image into the EEPROM of the N210.  The 
>>>> N2xxx series, unlike the B2xx series don't do this dynamically at
>>>>   runtime.  Once you load an image into them, that image is there 
>>>> until it is reprogrammed, even across power-off.  This is different 
>>>> than
>>>>   B2xx, which manages this automatically after power-up.
>>>>
>>>>
>>>>> Many thanks in advance and I look forward to being able to 
>>>>> contribute to the group.
>>>>>
>>>>> Best regards,
>>>>>
>>>>> David Taylor
>>>>>
>>>>> Ph.D Researcher, Limerick University, Ireland. GD4FMB
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>> ------------------------------------------------------------------------
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> ------------------------------------------------------------------------
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> ------------------------------------------------------------------------
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> ------------------------------------------------------------------------
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------49A97F786F73B300120709C7
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p>On Ubuntu 20.04, you could have just installed pybind11 with
      apt-get. But building from source is fine. BTW, you can reduce the
      build time of pybind11 to zero by adding <span
        class="blob-code-inner blob-code-marker" data-code-marker="+">-DPYBIND11_TEST=OFF
        to the cmake command line.</span></p>
    <p><span class="blob-code-inner blob-code-marker"
        data-code-marker="+">Looks like you're missing liborc.</span></p>
    <p><span class="blob-code-inner blob-code-marker"
        data-code-marker="+">sudo apt-get install liborc-0.4-dev</span></p>
    <p><span class="blob-code-inner blob-code-marker"
        data-code-marker="+">Ron<br>
      </span></p>
    <div class="moz-cite-prefix">On 8/3/20 10:31, David Taylor
      (manx.net) wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:5362CD13D5E543729D8D7269B3E9961F@PC1">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div style="FONT-SIZE: small; TEXT-DECORATION: none;
            FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
            COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">
            <div dir="ltr">
              <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri';
                COLOR: #000000">
                <div>Ron.</div>
                <div> </div>
                <div>Many thanks. It was down to permissions. Adding
                  sudo make install completed the pybind11 build
                  process.</div>
                <div> </div>
                <div>Incidentally, my install paths are
                  /usr/local/include/pybind11/ and
                  /usr/local/share/cmake/pybind11/ ..... .cmake</div>
                <div> </div>
                <div>Issue now with make at linkage? Compiles up to this
                  point.</div>
                <div> </div>
                <div>make[2] *** No rule to make target
                  ‘/usr/lib/x86_64-linux-gnu/liborc-0.4.so’, needed by
                  ‘lib/libgnuradio-development.so.v1.0-compat-xxx-xunknown’ 
                  Stop</div>
                <div>make[1] *** [CmakeFiles/Makefile2:317:
                  lib/CmakeFiles/gnuradio-development.dir/all] Error 2</div>
                <div> </div>
                <div>The source code is taken from 3.7.11 , with the
                  include header modified for shared_ptr use.</div>
                <div> </div>
                <div>David.</div>
                <div> </div>
                <div style="FONT-SIZE: small; TEXT-DECORATION: none;
                  FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
                  COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">
                  <div style="FONT: 10pt tahoma">
                    <div> </div>
                    <div style="BACKGROUND: #f5f5f5">
                      <div style="font-color: black"><b>From:</b> <a
                          title="usrp-users@lists.ettus.com"
                          moz-do-not-send="true">Ron Economos via
                          USRP-users</a> </div>
                      <div><b>Sent:</b> Monday, August 3, 2020 3:36 AM</div>
                      <div><b>To:</b> <a
                          title="usrp-users@lists.ettus.com"
                          moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                      </div>
                      <div><b>Subject:</b> Re: [USRP-users] GRC up-grade
                        - installation issues</div>
                    </div>
                  </div>
                  <div> </div>
                </div>
                <div style="FONT-SIZE: small; TEXT-DECORATION: none;
                  FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
                  COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">
                  <p>You don't need to supply a Findpybind11.cmake file.
                    That is already provided by the pybind11 install
                    (take a look in /usr/lib/cmake/pybind11).</p>
                  <p>Ron<br>
                  </p>
                  <div class="moz-cite-prefix">On 8/2/20 10:20, David
                    Taylor (manx.net) wrote:<br>
                  </div>
                  <blockquote
                    cite="mid:47A975ECF45F43D2A3CFAB47ABFB49FA@PC1"
                    type="cite">
                    <div dir="ltr">
                      <div style="FONT-SIZE: 12pt; FONT-FAMILY:
                        'Calibri'; COLOR: #000000">
                        <div>Ron,</div>
                        <div> </div>
                        <div>Thanks again.</div>
                        <div> </div>
                        <div>I have persevered with the GRC 9.0
                          installation and have followed the 3.9 OOT
                          module porting guide.</div>
                        <div>pybind11 2.4.3 and the other required
                          dependencies have been installed. CMake
                          reports all present during configure.</div>
                        <div> </div>
                        <div>A simple C++ OOT under the Workflow
                          instruction produces the correct binding files
                          under ‘$gr_modtool bind test_cc’</div>
                        <div>CMake configure correctly reported an ‘out
                          of sync error’ before binding.</div>
                        <div> </div>
                        <div>Generate fails to complete with the
                          following CMake error only.</div>
                        <div> </div>
                        <div><font color="#ff0000">CMake Error at
                            /usr/lib/x86_64-linux-gnu/cmake/gnuradio/GrPybind.cmake:227
                            (pybind11_add_module):</font></div>
                        <div><font color="#ff0000">    Unknown CMake
                            command “pybind11_add_module”.</font></div>
                        <div><font color="#ff0000">Call Stack (most
                            recent call first):</font></div>
                        <div><font color="#ff0000">   
                            python/bindings/CMakeLists.txt:23
                            (GR_PYBIND_MAKE_OOT)</font></div>
                        <div> </div>
                        <div>I added my own version of
                          Findpybind11.cmake, which may of course be
                          contributory.</div>
                        <div> </div>
                        <div>Is there a version of Findpybind11.cmake
                          out there that pairs specifically with
                          pybind11 2.4.3 or am I missing something
                          fundamental with modern cmake.</div>
                        <div>VOLKGNSSSDR is pulled successfully in using
                          the old method.</div>
                        <div> </div>
                        <div>Many thanks,</div>
                        <div> </div>
                        <div>David GD4FMB</div>
                        <div> </div>
                        <div> </div>
                        <div> </div>
                        <div> </div>
                        <div> </div>
                        <div style="FONT-SIZE: small; TEXT-DECORATION:
                          none; FONT-FAMILY: &quot;Calibri&quot;;
                          FONT-WEIGHT: normal; COLOR: #000000;
                          FONT-STYLE: normal; DISPLAY: inline">
                          <div style="FONT: 10pt tahoma">
                            <div> </div>
                            <div style="BACKGROUND: #f5f5f5">
                              <div style="font-color: black"><b>From:</b>
                                <a title="usrp-users@lists.ettus.com"
                                  moz-do-not-send="true">Ron Economos
                                  via USRP-users</a> </div>
                              <div><b>Sent:</b> Sunday, July 26, 2020
                                3:59 PM</div>
                              <div><b>To:</b> <a
                                  title="usrp-users@lists.ettus.com"
                                  moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                              </div>
                              <div><b>Subject:</b> Re: [USRP-users] GRC
                                up-grade - installation issues</div>
                            </div>
                          </div>
                          <div> </div>
                        </div>
                        <div style="FONT-SIZE: small; TEXT-DECORATION:
                          none; FONT-FAMILY: &quot;Calibri&quot;;
                          FONT-WEIGHT: normal; COLOR: #000000;
                          FONT-STYLE: normal; DISPLAY: inline">
                          <p>David,</p>
                          <p>You don't need MPIR. The dependency can be
                            resolved with libgmp. Here's what that
                            portion of my OOT CMake looks like:</p>
                          <p>-- Found LOG4CPP:
                            /usr/lib/x86_64-linux-gnu/liblog4cpp.so<br>
                            -- Found PkgConfig: /usr/bin/pkg-config
                            (found version "0.29.1") <br>
                            -- Checking for module 'gmp'<br>
                            --   No package 'gmp' found<br>
                            -- Found GMP:
                            /usr/lib/x86_64-linux-gnu/libgmpxx.so  <br>
                            -- Checking for module 'mpir &gt;= 3.0'<br>
                            --   No package 'mpir' found<br>
                            -- Could NOT find MPIR (missing:
                            MPIRXX_LIBRARY MPIR_LIBRARY
                            MPIR_INCLUDE_DIR) <br>
                            -- Found MPLIB:
                            /usr/lib/x86_64-linux-gnu/libgmpxx.so  <br>
                          </p>
                          <p>If you don't already have it:<br>
                          </p>
                          <p>sudo apt install libgmp-dev</p>
                          <p>For VOLKGNSSSDR, the techniques you used
                            for 3.7.11 should still work fine.</p>
                          <p>Here's an example of an external library
                            from one of my OOT's.</p>
                          <p><a class="moz-txt-link-freetext"
href="https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L128"
                              moz-do-not-send="true">https://github.com/drmpeg/gr-dvbgse/blob/master/CMakeLists.txt#L128</a></p>
                          <p><a class="moz-txt-link-freetext"
href="https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.txt#L38"
                              moz-do-not-send="true">https://github.com/drmpeg/gr-dvbgse/blob/master/lib/CMakeLists.txt#L38</a></p>
                          <p><a class="moz-txt-link-freetext"
href="https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Modules/FindPcap.cmake"
                              moz-do-not-send="true">https://github.com/drmpeg/gr-dvbgse/blob/master/cmake/Modules/FindPcap.cmake</a><br>
                          </p>
                          <p>Ron W6RZ<br>
                          </p>
                          <div class="moz-cite-prefix">On 7/26/20 07:06,
                            David Taylor (manx.net) via USRP-users
                            wrote:<br>
                          </div>
                          <blockquote
                            cite="mid:274815FD178544A4B80B844E5119AFCD@PC1"
                            type="cite">
                            <div dir="ltr">
                              <div style="FONT-SIZE: 12pt; FONT-FAMILY:
                                'Calibri'; COLOR: #000000">
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">Apologies if
                                    this question is out of scope, or if
                                    the answer is to be found elsewhere
                                    in the history.</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">I have been upgrading the GRC
                                    from 3.7.11 (with Ubuntu 18.04) to
                                    GRC 9.0 (with Ubuntu 20.04 LTS). See
                                    previous dialogue below, using </font><font
                                    style="LINE-HEIGHT: 13pt" size="3"
                                    color="#0000ff">3.8.1.0~rc12build2</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">Currently, the synaptic
                                    package manager and $sudo apt
                                    install gnuradio methods both align
                                    on GRC version 9.0. So I have
                                    persevered at this version.</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">UHD is at v 3.15 and with
                                    Python3 the package is basically
                                    functional using an available B210
                                    over USB3.</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt">--------------</p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt">The
                                  problem arises with OOT blocks
                                  transfer, CMake in its “modern form”
                                  and with the new dependency of MPIR.</p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">1). MPIR
                                    library has been installed
                                    independently and built at V3.0 ,
                                    with libraries and header located in
                                    /usr/local/lib and
                                    /usr/local/include respectively.</font></p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">2). My
                                    3.7.11 code also uses VOLKGNSSSDR in
                                    the build. As with the 3.7.11
                                    version, VOLKGNSSSDR was installed
                                    and tested independently with
                                    libraries and headers located</font><font
                                    style="FONT-SIZE: 11pt"> using
                                    FindVOLKGNSSSDR</font><font
                                    style="FONT-SIZE: 11pt"><span
                                      style="mso-spacerun: yes">  </span>in
                                    /cmake/modules and a find package
                                    reference added to CMakeLists.txt.</font></p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">I have yet
                                    to check whether
                                    {VOLK_GNSSSDR_LIBRARIES} has to be
                                    added to the target_link_libraries,
                                    noting the significantly different
                                    approach now used in ..
                                    //my_development/lib/CMakeLists.txt</font></p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">3). The
                                    standard VOLK library is found in
                                    CMake configure as it is now part of
                                    the v 9.0 build package. </font></p>
                                <p class="MsoNormal" style="MARGIN: 0cm
                                  0cm 10pt; LINE-HEIGHT: 13pt"><font
                                    style="FONT-SIZE: 11pt">4). I have
                                    tried adapting the older find
                                    package method used in 2) for MPIR
                                    without success, but note the
                                    following CMake configure output.</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">MPIRXX_LIBRARY-NOTFOUND</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">MPIR_INCLUDE_DIR-NOTFOUND</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">MPIR_LIBRARY<span
                                      style="mso-tab-count: 2">                 
                                    </span>/usr/local/lib/libmpir.so</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt" color="#ff0000">Can anyone
                                    help with the MPIR problem please?</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt">As an OOT build requirement at
                                    V 9.0., I would have expected
                                    expected the gr-modtool to generate
                                    some boiler-plate code to cover this
                                    dependency addition!</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font style="FONT-SIZE:
                                    11pt" color="#ff0000">Is there a
                                    more elegant and better way of
                                    incorporating VOLKGNSSSDR and the
                                    MPIR libraries using modern CMake?</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"><font color="#ff0000">Would
                                    reversion to 3.8.1 help in the short
                                    term, noting  that the output from
                                    my work might benefit and the later
                                    GRC scheduler improvements?</font></p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt">Many thanks.</p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt">David</p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt">GD4FMB</p>
                                <p class="MsoNoSpacing" style="MARGIN:
                                  0cm 0cm 0pt"> </p>
                                <div> </div>
                                <div style="FONT-SIZE: small;
                                  TEXT-DECORATION: none; FONT-FAMILY:
                                  &quot;Calibri&quot;; FONT-WEIGHT:
                                  normal; COLOR: #000000; FONT-STYLE:
                                  normal; DISPLAY: inline">
                                  <div style="FONT: 10pt tahoma">
                                    <div> </div>
                                    <div style="BACKGROUND: #f5f5f5">
                                      <div style="font-color: black"><b>From:</b>
                                        <a
                                          title="usrp-users@lists.ettus.com"
                                          moz-do-not-send="true">Marcus
                                          D. Leech via USRP-users</a> </div>
                                      <div><b>Sent:</b> Tuesday, June
                                        23, 2020 8:30 PM</div>
                                      <div><b>To:</b> <a
                                          title="usrp-users@lists.ettus.com"
                                          moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                                      </div>
                                      <div><b>Subject:</b> Re:
                                        [USRP-users] GRC up-grade -
                                        installation issues</div>
                                    </div>
                                  </div>
                                  <div> </div>
                                </div>
                                <div style="FONT-SIZE: small;
                                  TEXT-DECORATION: none; FONT-FAMILY:
                                  &quot;Calibri&quot;; FONT-WEIGHT:
                                  normal; COLOR: #000000; FONT-STYLE:
                                  normal; DISPLAY: inline">
                                  <div class="moz-cite-prefix">On
                                    06/23/2020 03:23 PM, David Taylor
                                    (manx.net) via USRP-users wrote:<br>
                                  </div>
                                  <blockquote
                                    cite="mid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1"
                                    type="cite">
                                    <div dir="ltr">
                                      <div style="FONT-SIZE: 12pt;
                                        FONT-FAMILY: 'Calibri'; COLOR:
                                        #000000">
                                        <div>Marcus.</div>
                                        <div> </div>
                                        <div>Many thanks for your prompt
                                          reply.</div>
                                        <div>Complete removal of
                                          everything from
                                          /usr/share/uhd/images, then
                                          running the images-downloader
                                          from /usr/bin works fine.</div>
                                        <div> </div>
                                        <div>I have only managed to try
                                          this with a B210 as the other
                                          transceivers remain in the
                                          laboratory under Covid19
                                          university building closure
                                          measures.</div>
                                        <div>The N210 is yet to be used,
                                          but thanks for the advising on
                                          the particular EEPROM image
                                          load method, </div>
                                      </div>
                                    </div>
                                  </blockquote>
                                  OK, so with B2xx, if they already have
                                  a loaded FPGA image, they won't try to
                                  re-load from your host during
                                  start-up, unless you<br>
                                    power-cycle them first.  So, this
                                  can result in you having upgraded the
                                  host side of things, complete with
                                  host-resident images,<br>
                                    and getting a "mis-match" error with
                                  B2xx.  The UHD code does NOT attempt
                                  to re-load the FPGA image if the host
                                  side is<br>
                                    newer than the code resident on the
                                  B2xx--only after a power-cycle.<br>
                                  <blockquote
                                    cite="mid:07FCC8E1668F4D4A814BC4DA01DCA8BE@PC1"
                                    type="cite">
                                    <div dir="ltr">
                                      <div style="FONT-SIZE: 12pt;
                                        FONT-FAMILY: 'Calibri'; COLOR:
                                        #000000">
                                        <div> </div>
                                        <div>It was interesting to see
                                          the extra console UHD
                                          diagnostics, particularly
                                          about clock sources and the 1
                                          PPS input.</div>
                                        <div>I have a Rubidium 10 MHz
                                          source and 1PPS generator
                                          source that will eventually be
                                          incorporated for USRP
                                          synchronisation.</div>
                                        <div> </div>
                                        <div>However, I am now in the
                                          process of setting up the
                                          toolchain and new gr_modtool
                                          and transitioning the 3.7x OOT
                                          blocks</div>
                                        <div>The GNU Radio 3.8 OOT
                                          Module Porting Guide looks
                                          helpful at 16 May 2020.</div>
                                        <div>The only real issue I had
                                          before was to include
                                          FindVOLKGNSSSDRcmake and the
                                          corresponding library.</div>
                                        <div> </div>
                                        <div>Regards,</div>
                                        <div>David.</div>
                                        <div> </div>
                                        <div> </div>
                                        <div> </div>
                                        <div style="FONT-SIZE: small;
                                          TEXT-DECORATION: none;
                                          FONT-FAMILY:
                                          &quot;Calibri&quot;;
                                          FONT-WEIGHT: normal; COLOR:
                                          #000000; FONT-STYLE: normal;
                                          DISPLAY: inline">
                                          <div style="FONT: 10pt tahoma">
                                            <div> </div>
                                            <div style="BACKGROUND:
                                              #f5f5f5">
                                              <div style="font-color:
                                                black"><b>From:</b> <a
title="usrp-users@lists.ettus.com" moz-do-not-send="true">Marcus D.
                                                  Leech via USRP-users</a>
                                              </div>
                                              <div><b>Sent:</b> Tuesday,
                                                June 23, 2020 1:47 AM</div>
                                              <div><b>To:</b> <a
                                                  title="usrp-users@lists.ettus.com"
                                                  moz-do-not-send="true">usrp-users@lists.ettus.com</a>
                                              </div>
                                              <div><b>Subject:</b> Re:
                                                [USRP-users] GRC
                                                up-grade - installation
                                                issues</div>
                                            </div>
                                          </div>
                                          <div> </div>
                                        </div>
                                        <div style="FONT-SIZE: small;
                                          TEXT-DECORATION: none;
                                          FONT-FAMILY:
                                          &quot;Calibri&quot;;
                                          FONT-WEIGHT: normal; COLOR:
                                          #000000; FONT-STYLE: normal;
                                          DISPLAY: inline">
                                          <div class="moz-cite-prefix">On
                                            06/22/2020 02:45 PM, David
                                            Taylor (manx.net) via
                                            USRP-users wrote:<br>
                                          </div>
                                          <blockquote
                                            cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
                                            type="cite">
                                            <div dir="ltr">
                                              <div style="FONT-SIZE:
                                                12pt; FONT-FAMILY:
                                                'Calibri'; COLOR:
                                                #000000">
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">Dear all,</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">I have been
                                                    successfully running
                                                    a B200/ B210
                                                    research project for
                                                    two years based on
                                                    Ubuntu 18.04 LTS and
                                                    version 3.7x GRC.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">This includes
                                                    a number of OOT
                                                    blocks developed for
                                                    direct sequence
                                                    spread spectrum,
                                                    using the Volk
                                                    GNSSSDR library
                                                    extensions. An N210
                                                    USRP is also at my
                                                    disposal.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">I now have a
                                                    clean upgrade to
                                                    Ubuntu 20.04 LTS and
                                                    wish to refresh the
                                                    GRC &amp; UHD
                                                    drivers to the
                                                    latest stable
                                                    release, taking best
                                                    advice please to
                                                    ensure project
                                                    conclusion.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt">The issues:-</p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">1). GRC
                                                    version <font
                                                      size="3"
                                                      color="#0000ff">3.8.1.0~rc12build2</font>
                                                    works standalone and
                                                    appears to have
                                                    similar Cmake files
                                                    structure and
                                                    content. (<font
                                                      size="3"
                                                      color="#0000ff">3.9.0.0</font>
                                                    is listed in the
                                                    package manager as
                                                    available, but with
                                                    significant and
                                                    noticeable changes
                                                    in the software
                                                    migration and
                                                    dependencies)? </font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">2). Libuhd-dev
                                                    at <font size="3"
                                                      color="#0000ff">3.15.0.0-2build5</font>
                                                    correctly identifies
                                                    the B210 over USB3.
                                                    (I note that
                                                    library-file
                                                    libuhd003 no longer
                                                    forms part of this
                                                    package).</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">3). Running
                                                    “uhd_images_downloader.py”
                                                    fully populates
                                                    /usr/share/images/.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">There is an
                                                    issue with FPGA
                                                    compatibility, which
                                                    I have seen before
                                                    in 3.7x GRC.<span
                                                      style="mso-spacerun:
                                                      yes">  “</span>Expected
                                                    FPGA compatibility
                                                    number 16 expected
                                                    got 14.”</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">This issue was
                                                    solved under V3.7x 
                                                    simply by
                                                    replacement of the
                                                    FPGA image from
                                                    archive. </font></p>
                                              </div>
                                            </div>
                                          </blockquote>
                                          Is this compatibility issue
                                          with your N210 or B2xx?  It
                                          isn't clear.<br>
                                          <br>
                                          <blockquote
                                            cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
                                            type="cite">
                                            <div dir="ltr">
                                              <div style="FONT-SIZE:
                                                12pt; FONT-FAMILY:
                                                'Calibri'; COLOR:
                                                #000000">
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">4). I have
                                                    removed all FPGA
                                                    images from the
                                                    /usr/share/images
                                                    directory and have
                                                    selectively tried
                                                    installing a number
                                                    of earlier discrete
                                                    images and
                                                    boot-loader from the
                                                    archive, but all
                                                    without success.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">5). A re-run
                                                    of the
                                                    uhd-images-downloader
                                                    now fails to
                                                    re-populate the
                                                    images folder,
                                                    however the
                                                    python(3) script
                                                    itself runs.</font></p>
                                              </div>
                                            </div>
                                          </blockquote>
                                          You might want to simply
                                          remove *everything* from
                                          /usr/share/uhd/images, and
                                          re-run:<br>
                                          <br>
                                          sudo uhd_images_downloader.py<br>
                                          <br>
                                          [Making certain it's running
                                          the version you think it's
                                          running--if you installed from
                                          pre-packaged, it'll be in
                                          /usr/bin]<br>
                                          <br>
                                          If this doesn't work, please
                                          share the error messages
                                          produced with us.<br>
                                          <br>
                                          <br>
                                          Also, because I didn't see
                                          anything in your work-log
                                          about it, for N210, you have
                                          to run:<br>
                                          <br>
                                          uhd_image_loader --args
                                          addr=&lt;addr-of-n210&gt;,type=n200<br>
                                          <br>
                                          This loads the appropriate
                                          image into the EEPROM of the
                                          N210.  The N2xxx series,
                                          unlike the B2xx series don't
                                          do this dynamically at<br>
                                            runtime.  Once you load an
                                          image into them, that image is
                                          there until it is
                                          reprogrammed, even across
                                          power-off.  This is different
                                          than<br>
                                            B2xx, which manages this
                                          automatically after power-up.<br>
                                          <br>
                                          <br>
                                          <blockquote
                                            cite="mid:3106CD4CFDE84EF2B512E9D68DC0AFF8@PC1"
                                            type="cite">
                                            <div dir="ltr">
                                              <div style="FONT-SIZE:
                                                12pt; FONT-FAMILY:
                                                'Calibri'; COLOR:
                                                #000000">
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"> </p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">Many thanks in
                                                    advance and I look
                                                    forward to being
                                                    able to contribute
                                                    to the group.</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt">Best regards,</p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">David Taylor</font></p>
                                                <p class="MsoNormal"
                                                  style="MARGIN: 0cm 0cm
                                                  10pt; LINE-HEIGHT:
                                                  13pt"><font
                                                    style="FONT-SIZE:
                                                    11pt">Ph.D
                                                    Researcher, Limerick
                                                    University, Ireland.
                                                    GD4FMB</font></p>
                                              </div>
                                            </div>
                                            <br>
                                            <fieldset
                                              class="mimeAttachmentHeader"></fieldset>
                                            <br>
                                            <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                                          </blockquote>
                                          <br>
                                          <hr>
                                          _______________________________________________<br>
                                          USRP-users mailing list<br>
                                          <a
                                            class="moz-txt-link-abbreviated"
                                            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                                          <a
                                            class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                        </div>
                                      </div>
                                    </div>
                                    <br>
                                    <fieldset
                                      class="mimeAttachmentHeader"></fieldset>
                                    <br>
                                    <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                                  </blockquote>
                                  <br>
                                  <hr>
                                  _______________________________________________<br>
                                  USRP-users mailing list<br>
                                  <a class="moz-txt-link-abbreviated"
                                    moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                                  <a class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                    moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                </div>
                              </div>
                            </div>
                            <br>
                            <fieldset class="mimeAttachmentHeader"></fieldset>
                            <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" moz-do-not-send="true">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
                          </blockquote>
                          <hr>
                          _______________________________________________<br>
                          USRP-users mailing list<br>
                          <a class="moz-txt-link-abbreviated"
                            moz-do-not-send="true">USRP-users@lists.ettus.com</a><br>
                          <a class="moz-txt-link-freetext"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                            moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <p>
                  </p>
                  <hr>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------49A97F786F73B300120709C7--


--===============6181916894760651031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6181916894760651031==--

