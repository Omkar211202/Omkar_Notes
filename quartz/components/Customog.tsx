import { SatoriOptions } from "satori/wasm"
import { GlobalConfiguration } from "../cfg"
import { i18n } from "../i18n"
import { QuartzPluginData } from "../plugins/vfile"

import { formatDate, getDate } from "./Date"
import readingTime from "reading-time"

export const Og = (
  cfg: GlobalConfiguration,
  fileData: QuartzPluginData,
  colorScheme: string,
  title: string,
  description: string,
  fonts: SatoriOptions["fonts"],
) => {
  let created: string | undefined
  let reading: string | undefined
  if (fileData.dates) {
    created = formatDate(getDate(cfg, fileData)!, cfg.locale)
  }
  const { minutes, text: _timeTaken, words: _words } = readingTime(fileData.text!)
  reading = i18n(cfg.locale).components.contentMeta.readingTime({
    minutes: Math.ceil(minutes),
  })
 
  const Li = [created, reading]
  console.log("this is the tiltle",title)
  return (
    <div
      style={{
        position: "relative",
        display: "flex",
        flexDirection: "row",
        alignItems: "flex-start",
        height: "100%",
        width: "100%",
        backgroundImage: `url("https://${cfg.baseUrl}/content/${fileData.frontmatter?.image}.jpeg")`,
        backgroundSize: "100% 100%",
      }}
    >
      {/* Title at bottom right of image */}
      <div
        style={{
          position: "absolute",
          right: "3.5rem",
          bottom: "3.5rem",
          background: "rgba(0,0,0,0.65)",
          color: "#fff",
          padding: "1rem 2rem",
          borderRadius: "0.5rem",
          fontSize: "2.5rem",
          fontWeight: 700,
          maxWidth: "60%",
          textAlign: "right",
          fontFamily: fonts[0].name,
          zIndex: 2,
          boxShadow: "0 2px 12px rgba(0,0,0,0.2)",
        }}
      >
        {title}
      </div>
      <div
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          background: "radial-gradient(circle at center, transparent, rgba(0, 0, 0, 0.4) 70%)",
        }}
      />
      <div
        style={{
          display: "flex",
          height: "100%",
          width: "100%",
          flexDirection: "column",
          justifyContent: "flex-start",
          alignItems: "flex-start",
          gap: "1.5rem",
          paddingTop: "4rem",
          paddingBottom: "4rem",
          marginLeft: "4rem",
        }}
      >
        <img
          src={`https://${cfg.baseUrl}/static/icon.png`}
          width={80}
          height={80}
          style={{
            position: "relative",
            backgroundClip: "border-box",
            borderRadius: "6rem",
          }}
        />
        <div
          style={{
            display: "flex",
            flexDirection: "column",
            textAlign: "left",
            fontFamily: fonts[0].name,
          }}
        >
          <h2
            style={{
              color: cfg.theme.colors[colorScheme as keyof typeof cfg.theme.colors].light,
              fontSize: "3rem",
              fontWeight: 700,
              marginRight: "4rem",
              fontFamily: fonts[0].name,
            }}
          >
            {title}
          </h2>
          <ul
            style={{
              color: cfg.theme.colors[colorScheme as keyof typeof cfg.theme.colors].gray,
              gap: "1rem",
              fontSize: "1.5rem",
              fontFamily: fonts[1].name,
            }}
          >
            {Li.map((item, index) => {
              if (item) {
                return <li key={index}>{item}</li>
              }
            })}
          </ul>
        </div>
        <p
          style={{
            color: cfg.theme.colors[colorScheme as keyof typeof cfg.theme.colors].light,
            fontSize: "1.5rem",
            overflow: "hidden",
            marginRight: "8rem",
            textOverflow: "ellipsis",
            display: "-webkit-box",
            WebkitLineClamp: 7,
            WebkitBoxOrient: "vertical",
            lineClamp: 7,
            fontFamily: fonts[1].name,
          }}
        >
          {description}
        </p>
      </div>
    </div>
  )
}